//
//  GameController.m
//  Threelow
//
//  Created by user169313 on 2021-07-13.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numbersHeld = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)holdDie:(NSNumber *)heldNumber {
    [self.numbersHeld addObject:heldNumber];
}

-(void)unHoldDie:(NSNumber *)inputNumber {
        if ([self.numbersHeld containsObject:inputNumber]) {
            [self.numbersHeld removeObject:inputNumber];
    }
}

-(void)resetDice {
    [self.numbersHeld removeAllObjects];
}

-(NSInteger)score {
    NSInteger total = 0;
    for (NSNumber *number in self.numbersHeld)
    {
        total += [number intValue];
    } return total;
}

@end
