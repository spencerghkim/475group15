#include <iostream>
#include <sstream>
#include <string>
#include <random>

using namespace std;

int main(){


	srand(555);


	string plaintext;

	for(unsigned long long halfBytes = 32; halfBytes <= 9223372036854775807; halfBytes *= 2){
		plaintext = "";

		unsigned long long endPoint = halfBytes;
		endPoint += rand()%7;

		for(unsigned long long i=0; i<endPoint; i++){
			int temp = rand()%16;
			if(temp <= 9){
				plaintext += (char) (temp + '0');
			}
			else{
				plaintext += (char) (temp + 'a' - 10);
			}
		}
			// cout << plaintext.size() << "\n";

		stringstream ss;
		ss << "echo " << plaintext << " > test.txt";
		system(ss.str().c_str());

		cerr << "with " << endPoint/2 << " bytes: \n";

		ss.str("");
		ss << "./speck_openssl.out < test.txt";
		system(ss.str().c_str());


	}


	return 0;
}