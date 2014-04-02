//Speck encryption algorithm with 128 bit key and plaintext
//EECS 475 group 15 - Anonymous

//Tasks
//key generation - we should NOT use rand(). We need to find a 
//cryptographically random source like openSSL or crypto++
//******Used timer to generate random key words?*******
//encryption - done!
//decryption - almost done, ****is this done now*****?


//padding

//********NEED TO PAD PLAINTEXT MESSAGES********
#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>
#include <vector>
#include <x86intrin.h>
#include <stdio.h>

#include <openssl/rand.h>

using namespace std;


#define LCS _lrotl 							//left circular shift
#define RCS _lrotr 							//right circular shift
#define u64 unsigned long long //******Want to change these to uberzahl?******
#define MAXKEYWORDS 4
#define MAXROUNDS 34

#define CHOSENKEYWORDSIZE 4
#define CORRESPONDINGROUNDS 34

enum modes{ ENC, DEC };

class SpeckClass{
private:
	int n;									//word size 
	int m;									//number of words in key
	u64 T;									//number of rounds
	int alpha, beta;						//amts to circular shift
	vector<u64> x_orig, y_orig;				//plaintext words (2)
	vector<u64> x_final, y_final;			//ciphertext words (2)

private:
	u64 l[MAXROUNDS+MAXKEYWORDS-1];			//all but 1 word of key. Little endian. 
	u64 key[MAXROUNDS+1]; 					//last word of key. Little endian. 
	bool tableFilled=0;		//filling the table means we can seamlessly use decryption..?
	bool Mode;

	void expandKey();						//expand key function
	void encrypt(u64 round);				//encrypt ciphertext function
	
	void unexpandKey(u64 i);				
	void decrypt(u64 round);

public:
	vector<u64> x, y;						//ciphertext words (2)

	void encryption();						//encrypts x_orig, y_orig into x,y
	string decryption();
	void changeMode(bool mode);
	void printStuff();	
	SpeckClass(bool mode, int N, int t, vector<u64> pt, vector<u64> K);
};

void SpeckClass::expandKey(){
	//create table of keys with the initial key
	if(tableFilled) return;
	
	for(u64 i=0; i<T-1; i++){
		int index = i+m-1;
		l[index] = (RCS(l[i], alpha) + key[i]) ^ i;
		key[i+1] = LCS(key[i], beta) ^ l[index];
	}

	tableFilled = 1;
}

void SpeckClass::encrypt(u64 round){
	for(uint i=0; i<x.size(); i++){
		x[i] = (RCS(x[i], alpha) + y[i]) ^ key[round];
		y[i] = LCS(y[i], beta) ^ x[i];
	}
}

void SpeckClass::decrypt(u64 round){
	for(uint i=0; i<x.size(); i++){
		y[i] = RCS((x[i] ^ y[i]), beta);
		x[i] = LCS((x[i] ^ key[round]) - y[i], alpha);

	}
}

void SpeckClass::encryption(){
	if(Mode == DEC && !tableFilled) {
		cerr << "Wrong mode; DEC was inputted\n";
		return;
	}
	expandKey();
	for(u64 i=0; i<T; i++)
		encrypt(i);
}

string SpeckClass::decryption(){
	if(Mode == ENC && !tableFilled) {
		cerr << "Wrong mode; ENC was inputted\n";
		return "";
	}
	expandKey();
	for(u64 i=0; i<T; i++)
		decrypt(T-1-i);

	stringstream plaintext;

	u64 messageLengthBytes = y.back();
	int count = 0;

	while(messageLengthBytes >= 16){
		// cout << "bytes: " << messageLengthBytes << "\n";
		plaintext << hex << setw(16) << setfill('0') << x[count];
		plaintext << hex << setw(16) << setfill('0') << y[count];
		count++;
		messageLengthBytes -= 16;
	}

	if(messageLengthBytes==0);
	else if(messageLengthBytes <= 8){

		int width = messageLengthBytes*2;

		plaintext << hex << setw(width) << setfill('0') << ((x[count] >> 4*(16-width)));
	}
	else{

		plaintext << hex << setw(16) << setfill('0') << x[count];
		messageLengthBytes -= 8;
		int width = messageLengthBytes*2;
		plaintext << hex << setw(width) << setfill('0') << ((y[count] >> 4*(16-width)));
	}

	cout << "output without padding:\n" << plaintext.str() << "\n";

	return plaintext.str();

	// printf("\nplaintext: \t0x");
	// for(uint i=0; i<x.size(); i++)
	// 	printf("%016llx %016llx ", x[i], y[i]);
	// printf("\n");
}

void SpeckClass::printStuff(){
	printf("key: \t\t0x");
	for(int i=0; i<m-1; i++)
		printf("%016llx ", l[i]);
	printf("%016llx\n", key[0]);


	printf("plaintext: \t0x");
	for(uint i=0; i<x_orig.size(); i++)
		printf("%016llx %016llx ", x_orig[i], y_orig[i]);
	printf("\n");

	printf("ciphertext: \t0x");
	for(uint i=0; i<x.size(); i++)
		printf("%016llx %016llx ", x[i], y[i]);
	printf("\n");
	
}

SpeckClass::SpeckClass(bool mode, int N, int t, vector<u64> pt, vector<u64> K){
	n = N; m = K.size(); T = (u64) t;
	
	alpha = 8, beta = 3;
	if(n == 16) alpha=7, beta=2;

	for(int i=0; i<m-1; i++)
		l[(m-2)-i] = K[i];
	key[0] = K[m-1];

	Mode = mode;

	for(uint i=0; i<pt.size(); i++){
		u64 temp = 0;
		temp = pt[i];
		if(i%2==0)
			x_orig.push_back(temp);
		else
			y_orig.push_back(temp);
	}
	x = x_orig;
	y = y_orig;
}

//Generates a random key using the openssl rand library
void keyGenerator(vector<u64>& key){
	int result;
	unsigned char buf[8];
	

	stringstream ss;
	for(int i=0; i<CHOSENKEYWORDSIZE; i++){
		ss.str("");

		result = RAND_bytes(buf, 8);
		
		if(result){ //good
			ss << "0x";
			for(int k=0; k<8; k++)
				ss << hex << setw(2) << setfill('0') << (int) buf[k];

			key.push_back(stoull(ss.str().c_str(), 0, 0));

		}
		else{ //bad
			i--;
		}

	}

}


void createPlaintext(vector<u64>& pt){
	//modifies empty vector
	//uses cin; piped input file into cin

	string word;

	string input;
	cin >> input;
	if(input.size() % 2){
		string temp = "0";
		temp += input;
		input = temp;
	}
	int inputSize = input.size();

	int messageLengthBytes = inputSize / 2;

	//pad

	if(messageLengthBytes % 16 == 0){
		input += "1000000000000000";
		stringstream ss;
		ss << hex << setw(16) << setfill('0') << messageLengthBytes;
		input += ss.str();
	}
	else if (messageLengthBytes % 16 < 8){

		input += "10";
		while(input.size() % 16 != 0){
			input += "00";
		}

		stringstream ss;
		ss << hex << setw(16) << setfill('0') << messageLengthBytes;
		input += ss.str();

	}
	else{
		input += "10";
		while(input.size() % 16 != 0){
			input += "00";
		}
		input += "0000000000000000";

		stringstream ss;
		ss << hex << setw(16) << setfill('0') << messageLengthBytes;
		input += ss.str();
	}

	//read 128-bit parts of the plaintext
	for(uint i=0; i<input.size()/16; i++){
			word = "0x";		
			word += input.substr(i*16, 16);
			pt.push_back(stoull(word.c_str(), 0, 0));

	}

	cout << "input with padding:\n" << input << "\n";

}

int main(int argc, char** argv){
    
	vector<u64> pt, K;
	// 6c617669757165207469206564616d20
	// K.push_back(0x0f0e0d0c0b0a0908);
	// K.push_back(0x0706050403020100);

	createPlaintext(pt);

    keyGenerator(K);


    // 65736f6874206e49202e72656e6f6f70
    // K.push_back(0x1f1e1d1c1b1a1918);
    // K.push_back(0x1716151413121110);
    // K.push_back(0x0f0e0d0c0b0a0908);
    // K.push_back(0x0706050403020100);

    

	SpeckClass specky(ENC, 64, CORRESPONDINGROUNDS, pt, K);
	specky.encryption();
	specky.printStuff();
	specky.decryption();

	if(argc > 1 && argv[1][1] == 'h'){
		cerr << "usage: ./speck.out < infile\n";
		return 0;
	}


	return 0;
}