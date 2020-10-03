//
//  Sorter.m
//  InsertSort
//
//  Created by Source on 2020/10/3.
//  Copyright © 2020 Source. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter


+ (nonnull NSArray<NSNumber *> *)insertSort:(nonnull NSArray<NSNumber *> *)arrNumbers {
    
    NSMutableArray<NSNumber *> *arrMNumbers = [arrNumbers mutableCopy];
    for ( NSInteger i = arrMNumbers.count - 2; i >= 0; --i ) {
        
        for ( NSInteger j = i; j < arrMNumbers.count - 1; ++j ) {
            
            if ( arrMNumbers[j].integerValue > arrMNumbers[j + 1].integerValue ) {
                
                NSNumber *temp = arrMNumbers[j];
                arrMNumbers[j] = arrMNumbers[j + 1];
                arrMNumbers[j + 1] = temp;
            }
        }
    }
    
    return [arrMNumbers copy];
}


@end
