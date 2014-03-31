//Speck encryption algorithm with 128 bit key and plaintext
//EECS 475 group 15 - Anonymous

#include <iostream>
#include <string>
#include <random>
#include <x86intrin.h>
using namespace std;


#define LCS _lrotl //left circular shift
#define RCS _lrotr //right circular shift
#define u64 unsigned long long
#define R(x,y,k) (x=RCS(x,8), x+=y, x^=k, y=LCS(y,3), y^=x)

#define WORDSIZE 64
#define NUMWORDS 2
#define NUMROUNDS 32
#define ALPHA 8 
#define BETA 3
//(alpha, beta) = (8,3) since word size != 16

#define MAXLENGTH 100

void Speck128ExpandKeyAndEncrypt(u64 pt[], u64 ct[], u64 K[]){
	u64 i, B=K[1], A=K[0];

	ct[0]=pt[0]; ct[1]=pt[1];
	
	for(i=0; i<32; i++){
		R(ct[1], ct[0], A); 
		R(B, A, i);
	}

	//no key expand version
	// for(i=0; i<32; i++) R(ct[1], ct[0], K[i]);
}

int main(){

	// if(argc != 3){
	// 	cerr << "usage: ./speck.out plaintext key\n";
	// 	return 0;
	// }
	//usage: ./speck.out plaintext key
	//make a "random key" mode that generates a random key
	//make different modes to take hex/decimal input
	//key sizes of > 128 bits (32 characters) will be truncated
	//key sizes of < 128 bits will be &'d with 0x0
	//key should be 128 bit HEX

	//pt = plaintext, ct = cyphertext, K = key = (K[1], K[0])
	u64 pt[NUMWORDS], ct[NUMWORDS], K[NUMWORDS];
	K[1] = 0x0f0e0d0c0b0a0908;
	K[0] = 0x0706050403020100;
	pt[1] = 0x6c61766975716520; 
	pt[0] = 0x7469206564616d20; 
	ct[1] = 0xa65d985179783265;
	ct[0] = 0x7860fedf5c570d18;

	// Key: 0f0e0d0c0b0a0908 0706050403020100
	// Plaintext: 6c61766975716520 7469206564616d20
	// Ciphertext: a65d985179783265 7860fedf5c570d18


	Speck128ExpandKeyAndEncrypt(pt, ct, K);

	// cout << ct[0] << " " << ct[1] << "\n";

	printf("plaintext: \t0x%llx %llx\n", pt[1], pt[0]);
	printf("cyphertext: \t0x%llx %llx\n", ct[1], ct[0]);

	return 0;
}
