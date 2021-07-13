//
//  GameController.h
//  Threelow
//
//  Created by user169313 on 2021-07-13.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *numbersRolled;
@property (nonatomic, strong) NSMutableArray *numbersHeld;

-(void)holdDie:(NSNumber *)heldNumber;

-(void)unHoldDie:(NSNumber *)dieNumber;

-(void)resetDice;

-(NSInteger)score;

@end
