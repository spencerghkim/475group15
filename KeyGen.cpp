//
//  File.cpp
//  475Project
//
//  Created by Alexander Athan on 4/1/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#include <x86intrin.h>
#include <random>
#include <time.h>

using namespace std;

#define KEYWORDMASK 0xFFFFFFFF
#define MAXKEYWORDS 4
#define u64 unsigned long long //******Want to change these to uberzahl?******


mt19937 randGen;
uniform_int_distribution<u64> uni_dist(0x0ull, KEYWORDMASK);

//Generates a random key using a seed based on time to simulate probabilistic random key words
void keyGenerator(vector<u64>& key){
    time_t timer;
    time(&timer);
    randGen.seed(timer);
    
    for (int i = 0; i < MAXKEYWORDS; i++){
        key.push_back(uni_dist(randGen) & KEYWORDMASK);
    }
    
}