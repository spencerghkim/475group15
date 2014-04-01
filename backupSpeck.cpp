//Speck encryption algorithm with 128 bit key and plaintext
//EECS 475 group 15 - Anonymous

//Tasks
//key generation - we should NOT use rand(). We need to find a 
//cryptographically random source like openSSL or crypto++
//******Used timer to generate random key words?*******
//encryption - done!
//decryption - almost done, ****is this done now*****?

//********NEED TO PAD PLAINTEXT MESSAGES********
#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <x86intrin.h>
#include <random>
#include <time.h>
#include <stdio.h>


using namespace std;



#define LCS _lrotl 							//left circular shift
#define RCS _lrotr 							//right circular shift
#define u64 unsigned long long //******Want to change these to uberzahl?******
#define MAXKEYWORDS 4
#define MAXROUNDS 34
#define KEYWORDMASK 0xFFFFFFFF

enum modes{ ENC, DEC };


mt19937 randGen;
uniform_int_distribution<u64> uni_dist(0x0ull, KEYWORDMASK);

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
	void decryption();
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

void SpeckClass::decryption(){
	if(Mode == ENC && !tableFilled) {
		cerr << "Wrong mode; ENC was inputted\n";
		return;
	}
	expandKey();
	for(u64 i=0; i<T; i++)
		decrypt(T-1-i);

	printf("\nplaintext: \t0x");
	for(uint i=0; i<x.size(); i++)
		printf("%llx %llx ", x[i], y[i]);
	printf("\n");
}

void SpeckClass::printStuff(){
	printf("orig key: \t0x");
	for(int i=0; i<m-1; i++)
		printf("%08llx ", l[i]);
	printf("%llx\n", key[0]);


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
		l[i] = K[i];
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


//Generates a random key using a seed based on time to simulate probabilistic random key words
void keyGenerator(vector<u64>& key){
    time_t timer;
    time(&timer);
    randGen.seed(timer);
    
    for (int i = 0; i < MAXKEYWORDS; i++){
        key.push_back(uni_dist(randGen) & KEYWORDMASK);
    }
    
}



int main(int argc, char** argv){
	//pt = plaintext, K = key
    
	vector<u64> pt, K;
	pt.push_back(0x6c61766975716520);
	pt.push_back(0x7469206564616d20);
	//K.push_back(0x0f0e0d0c0b0a0908);
	//K.push_back(0x0706050403020100);
    
    keyGenerator(K);
    
	SpeckClass specky(ENC, 64, 32, pt, K);
	specky.encryption();
	specky.printStuff();
	specky.decryption();

	if(argc > 1 && argv[1][1] == 'h'){
		cerr << "usage: ./speck.out < infile\n";
		return 0;
	}

	//assume mode = 128/128
	/*
	vector<u64> pt2, key2;
	string word;
	char ch[17];
	char c;

    
	//read plaintext
	while(cin.good()){
		cin >> c;
		if(c == 'K') break;
		cin.unget();
		cin.get(ch, 17);
		
		word = "0x";
		word += ch;
		// printf("%llx\n", stoull(word.c_str(), 0, 0));
		pt2.push_back(stoull(word.c_str(), 0, 0));
	}

	//read key
	string hue;
	getline(cin, hue);
	while(cin.good()){
		cin.get(ch, 17);
		word = "0x";
		word += ch;
		// printf("%llx\n", stoull(word.c_str(), 0, 0));
		key2.push_back(stoull(word.c_str(), 0, 0));
	}


	SpeckClass specky2(ENC, 64, 32, pt2, key2);
	specky2.encryption();
	specky2.printStuff();
     */

	return 0;
}