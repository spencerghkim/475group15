//
//  main.cpp
//  475-p4
//
//  Created by Alexander Athan on 3/12/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#include <iostream>
#include <cstdlib>
#include <cmath>
#include <cassert>
#include <random>
#include <chrono>
#include "uberzahl.h"

using namespace std;

//c = exponent, a = base, p,q self expl.
uberzahl originalModExp(uberzahl c, uberzahl a, uberzahl p, uberzahl q);
uberzahl chineseModExp(uberzahl c, uberzahl a, uberzahl p, uberzahl q);
uberzahl chineseModExp2(uberzahl c, uberzahl a, uberzahl p, uberzahl q);
uberzahl origMont(uberzahl c, uberzahl a, uberzahl p, uberzahl q);
uberzahl chinMont(uberzahl c, uberzahl a, uberzahl p, uberzahl q);

uberzahl originalModExp(uberzahl c, uberzahl a, uberzahl p, uberzahl q){
	//a^c mod pq
	auto start = chrono::steady_clock::now();

	uberzahl z = 1;
	uberzahl n = p*q;

	unsigned int numBits = c.bitLength();
	unsigned int currentBit = 1;

	for (unsigned int i = 0; i < numBits; i++){
		z = (z*z) % n;

		currentBit = c.bit(numBits-i-1);
        if (currentBit == 1)
            z = (z*a) % n;
	}

	if(q > 1){
		auto current = chrono::steady_clock::now();
		auto elapsed = chrono::duration_cast<chrono::duration<double>>(current-start);
		double chrono_time = elapsed.count();
		cerr << "\tSqMultOrig time: " << chrono_time << "\n"; 
	}

	return z;
}


uberzahl chineseModExp(uberzahl c, uberzahl a, uberzahl p, uberzahl q){ //unused
	//a^c mod pq
	auto start = chrono::steady_clock::now();

	uberzahl dp = c % (p-1);
	uberzahl dq = c % (q-1);

	uberzahl T = q.inverse(p);

	uberzahl m1 = originalModExp(dp,a,p,1);
	uberzahl m2 = originalModExp(dq,a,q,1);
    
	uberzahl u  = ((m1-m2)*T) % p;
	uberzahl m = m2 + u*q;

	auto current = chrono::steady_clock::now();
	auto elapsed = chrono::duration_cast<chrono::duration<double>>(current-start);
	double chrono_time = elapsed.count();
	cerr << "\tSqMult_CRT time: " << chrono_time << "\n"; 
    
	return m;
}

uberzahl chineseModExp2(uberzahl c, uberzahl a, uberzahl p, uberzahl q){ 
	//a^c mod pq
	auto start = chrono::steady_clock::now();
	
	uberzahl dp = c % (p-1);
	uberzahl dq = c % (q-1);

	uberzahl T = q.inverse(p);
	uberzahl S = p.inverse(q);

	uberzahl m1 = originalModExp(dp,a,p,1);
	uberzahl m2 = originalModExp(dq,a,q,1);
    
	uberzahl m = (m1*q*T + m2*p*S) % (p*q);

	auto current = chrono::steady_clock::now();
	auto elapsed = chrono::duration_cast<chrono::duration<double>>(current-start);
	double chrono_time = elapsed.count();
	cerr << "\tSqMult_CRT time: " << chrono_time << "\n"; 
    
	return m;
}



class mont{
private: 
	uberzahl N; 								//modulus
	uberzahl R; 								//R = 2^k > N
	uberzahl RInv;								//R^-1
	uberzahl aBar; 								//base => aBar
	uberzahl z; 								//result in monty land
	uberzahl NPrime;							//N' = -N^-1 mod R
	uberzahl m, t;								//temp variables
	inline void ReduceZ(){
		m = (z*NPrime) % R;
		t = (z + m*N) >> (R.bitLength()-1);
		if(t >= N) 
			z = (t-N);
		else 
			z = (t);
	}
public:
	mont(uberzahl a, uberzahl n){
		N = n;
		R = ((uberzahl)2) << (N.bitLength()-1);
		assert(R > N);
		RInv = R.inverse(N);

		aBar = (a*R)%N; 						//a = a*R mod N
		z = R % N; 								//z=1*R mod N
		NPrime = R - N.inverse(R);
	}
	inline void MM_za(){ 						//z = MM(z,a) = (z*aBar*RInv) % N;
		z = z*aBar;
		ReduceZ();
	}
	inline void squareZ(){ 						//z = z*z mod n = (z*z*RInv) % N;
		z = z*z;
		z = (z*RInv) % N;
		ReduceZ();
	}
	inline uberzahl Red(){ 						//returns Red(z) = (z*RInv) % N;
		m = (z*NPrime) % R;			
		t = (z + m*N) >> (R.bitLength()-1);	
		
		if(t >= N) return (t-N);
		else return (t);
	}
	
};

uberzahl origMont(uberzahl c, uberzahl a, uberzahl p, uberzahl q){
	//a^c mod pq
	auto start = chrono::steady_clock::now();

	uberzahl n = p*q;

	unsigned int numBits = c.bitLength();
	unsigned int currentBit = 1;

	mont Monty(a, n);

	for(unsigned int i = 0; i < numBits; i++){
		Monty.squareZ();

		currentBit = c.bit(numBits-i-1);
        if (currentBit == 1)
        	Monty.MM_za();
	}

	if(q > 1){
		auto current = chrono::steady_clock::now();
		auto elapsed = chrono::duration_cast<chrono::duration<double>>(current-start);
		double chrono_time = elapsed.count();
		cerr << "\tMonty_Orig time: " << chrono_time << "\n"; 
	}

	return Monty.Red();
}

uberzahl chinMont(uberzahl c, uberzahl a, uberzahl p, uberzahl q){
	//a^c mod pq
	auto start = chrono::steady_clock::now();

	uberzahl dp = c % (p-1);
	uberzahl dq = c % (q-1);

	uberzahl T = q.inverse(p);
	uberzahl S = p.inverse(q);

	uberzahl m1 = origMont(dp,a,p,1);
	uberzahl m2 = origMont(dq,a,q,1);
    
	uberzahl m = (m1*q*T + m2*p*S) % (p*q);

	auto current = chrono::steady_clock::now();
	auto elapsed = chrono::duration_cast<chrono::duration<double>>(current-start);
	double chrono_time = elapsed.count();
	cerr << "\tMonty &CRT time: " << chrono_time << "\n"; 
    
	return m;
}


//***************************
int main(int argc, char** argv)
{
	//c = exponent, a = base, p,q self expl.

	uberzahl p = 13;
	uberzahl q = 11;
	uberzahl a = 20;
	uberzahl c = 8;

	uberzahl result = 1, result2, result3, result4;

	// result = originalModExp(c,a,p,q);
	// std::cout << "original: " << result << "\n";
	// result = chineseModExp(c,a,p,q);
	// std::cout << "chinese: " << result << "\n";
	// result = origMont(c,a,p,q);
	// std::cout << "origMont: " << result << "\n";
	// result = chinMont(c,a,p,q);
	// std::cout << "chinMont: " << result << "\n";



	if(argc != 2){
		cerr << "usage: ./main2.out bitSize\n";
		exit(1);
	}

	int bitSize = atoi(argv[1]);
	srand(time(0));

	cout << "\ngenerating primes...\n";
	auto start = chrono::steady_clock::now();

	//generate random number of bitSize/2 bits
	uberzahl r = random((uberzahl)1 << ((bitSize/2)-1), (uberzahl)1 << ((bitSize/2)));

	//generate p and q
	p = nextprime(r, 50);
	q = nextprime(p+1, 50);
	cout << "\tp: " << p << " " << "q: " << q << "\n";

	//generate a and c
	a = random((uberzahl) 2, (uberzahl)1 << (bitSize-2));
	c = random((uberzahl) 2, (uberzahl)1 << (bitSize-4));
	cout << "\ta: " << a << " " << "c: " << c << "\n";

		auto current = chrono::steady_clock::now();
		auto elapsed = chrono::duration_cast<chrono::duration<double>>(current-start);
		double chrono_time = elapsed.count();
	cout << "done generating primes! Took " << chrono_time << " seconds...\n";

	result = originalModExp(c,a,p,q);
	result2 = chineseModExp2(c,a,p,q);
	result3 = origMont(c,a,p,q);
	result4 = chinMont(c,a,p,q);
	if(result == result2 && result2 == result3 && result3 == result4){
		cout << "Answers all same: " << result << "\n";
	}
	else{
		cout << "Answers not all same...\n";
		cout << "original: " << result << "\n";
		cout << "chinese2: " << result << "\n";
		cout << "origMont: " << result << "\n";
		cout << "chinMont: " << result << "\n";
	}


	return 0;
}



