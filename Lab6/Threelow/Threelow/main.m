//
//  main.m
//  Threelow
//
//  Created by user169313 on 2021-07-13.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    
    InputCollector *input = [[InputCollector alloc] init];
    GameController *hold = [[GameController alloc] init];
    
    NSMutableArray *numbersRolled = [[NSMutableArray alloc] init];
    //NSMutableDictionary *numbersHeld = [[NSMutableDictionary alloc] init];
    
    Dice *firstDie = [[Dice alloc] init];
    Dice *secondDie = [[Dice alloc] init];
    Dice *thirdDie = [[Dice alloc] init];
    Dice *fourthDie = [[Dice alloc] init];
    Dice *fifthDie = [[Dice alloc] init];
    
    while (YES) {
        
        NSString *promptResult = [input inputForPrompt:@"\nType 'roll' to roll the die"];
        
        if ([promptResult isEqualToString:@"roll"])
        {
            firstDie.dieNumber = [firstDie randomize];
            secondDie.dieNumber = [secondDie randomize];
            thirdDie.dieNumber = [thirdDie randomize];
            fourthDie.dieNumber = [fourthDie randomize];
            fifthDie.dieNumber = [fifthDie randomize];
            
            [numbersRolled addObject:firstDie.dieNumber];
            [numbersRolled addObject:secondDie.dieNumber];
            [numbersRolled addObject:thirdDie.dieNumber];
            [numbersRolled addObject:fourthDie.dieNumber];
            [numbersRolled addObject:fifthDie.dieNumber];
            
            NSString *formatArray = [hold.numbersHeld componentsJoinedByString:@","];
            
            NSLog(@"\n Die 1) is:%@ %@\n Die 2) is:%@ %@\n Die 3) is:%@ %@\n Die 4) is:%@ %@\n Die 5) is:%@ %@\n Your current held die are: %@\n Your current score is: %zd\n",
                  firstDie.dieNumber,[firstDie dieValue:firstDie.dieNumber],
                  secondDie.dieNumber,[secondDie dieValue:secondDie.dieNumber],
                  thirdDie.dieNumber,[thirdDie dieValue:thirdDie.dieNumber],
                  fourthDie.dieNumber,[fourthDie dieValue:fourthDie.dieNumber],
                  fifthDie.dieNumber,[fifthDie dieValue:fifthDie.dieNumber],
                  formatArray, [hold score]);
            
            while (YES) {
                NSString *holdResult = [input inputForPrompt:@"\nTo hold a number type which die it is. \nType 'show' to show which numbers are currently held \nType 'unhold' to unhold certain die. \nType 'reset' to reset all your held die. \nType 'back' to roll again."];
                
                if ([holdResult isEqualToString:@"1"]) {
                    [hold holdDie:firstDie.dieNumber];
                } else if ([holdResult isEqualToString:@"2"]) {
                    [hold holdDie:secondDie.dieNumber];
                } else if ([holdResult isEqualToString:@"3"]){
                    [hold holdDie:thirdDie.dieNumber];
                } else if ([holdResult isEqualToString:@"4"]) {
                    [hold holdDie:fourthDie.dieNumber];
                } else if ([holdResult isEqualToString:@"5"]) {
                    [hold holdDie:fifthDie.dieNumber];
                    
                } else if ([holdResult isEqualToString:@"back"]) {
                    break;
                    
                } else if ([holdResult isEqualToString:@"show"]) {
                    NSString *formatArray = [hold.numbersHeld componentsJoinedByString:@","];
                    NSLog(@"\n[%@]\n", formatArray);
                    
                } else if ([holdResult isEqualToString:@"reset"]) {
                    [hold resetDice];
                    NSLog(@"\nArray has been reset\n");
                    
                } else if ([holdResult isEqualToString:@"unhold"]) {
                    while (YES) {
                        NSString *unholdResult = [input inputForPrompt:@"\nType the number would like to unhold? Type 'back' to go back."];
                        
                        if ([unholdResult isEqualToString:@"1"]) {
                            [hold unHoldDie:[NSNumber numberWithInt:1]];
                        } else if ([unholdResult isEqualToString:@"2"]) {
                            [hold unHoldDie:[NSNumber numberWithInt:2]];
                        } else if ([unholdResult isEqualToString:@"3"]){
                            [hold unHoldDie:[NSNumber numberWithInt:3]];
                        } else if ([unholdResult isEqualToString:@"4"]) {
                            [hold unHoldDie:[NSNumber numberWithInt:4]];
                        } else if ([unholdResult isEqualToString:@"5"]) {
                            [hold unHoldDie:[NSNumber numberWithInt:5]];
                        } else if ([unholdResult isEqualToString:@"6"]) {
                            [hold unHoldDie:[NSNumber numberWithInt:6]];
                        } else if ([unholdResult isEqualToString:@"back"]){
                            break;
                        } else {
                            NSLog(@"\nSorry, invalid request\n");
                        }
                    }
                } else {
                    NSLog(@"\nSorry, invalid request\n");
                }
            }
        }
    }
    return 0;
}
