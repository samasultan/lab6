//
//  Dice.h
//  Threelow
//
//  Created by user169313 on 2021-07-13.


#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSNumber *dieNumber;
@property (nonatomic, strong) NSArray *numbersOnDie;
//@property (nonatomic, strong) NSArray *diceArray;

-(NSNumber *)randomize;

-(NSString *)dieValue: (NSNumber *)dieNumber;

@end
