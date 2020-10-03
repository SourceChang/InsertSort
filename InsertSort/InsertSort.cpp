//
//  InsertSort.cpp
//  InsertSort
//
//  Created by Source on 2020/10/3.
//  Copyright © 2020 Source. All rights reserved.
//

#include "InsertSort.hpp"


void InsertSort::sort(std::vector<int>& arrNumbers) {
    
    for ( int i = arrNumbers.size() - 2; i >= 0; --i ) {
        
        for ( int j = i; j < arrNumbers.size() - 1; ++j ) {
            
            if ( arrNumbers[j] > arrNumbers[j + 1] ) {
                
                std::swap( arrNumbers[j], arrNumbers[j + 1] );
            }
        }
    }
}
