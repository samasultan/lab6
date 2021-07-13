//
//  InputCollector.m
//  Threelow
//
//  Created by user169313 on 2021-07-13.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    // Show promptString
    NSLog(@"%@", promptString);
    
    // Collect input with fgets / scanf
    char inputChars[255];
    scanf("%s", inputChars);
    
    // Return input as NSString
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}

@end
