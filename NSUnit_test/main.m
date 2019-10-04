//
//  main.m
//  NSUnit_test
//
//  Created by Gregory John Casamento on 10/4/19.
//  Copyright © 2019 Gregory John Casamento. All rights reserved.
//

#import <Foundation/Foundation.h>

/* Show whether test was passed */
void passTest(BOOL flag,
              NSString *msg)
{
    if(flag == YES)
    {
        NSLog(@"PASS: %@",msg);
    }
    else
    {
        NSLog(@"FAIL: %@",msg);
    }
}

/* Run all tests */
void runTests()
{
    NSUInteger abstractValue = 1.0;
    NSMeasurement *seconds = [[NSMeasurement alloc] initWithDoubleValue:abstractValue unit:[NSUnitDuration seconds]];
    NSMeasurement *minutes = [[NSMeasurement alloc] initWithDoubleValue:abstractValue unit:[NSUnitDuration minutes]];
    // 61.0 seconds, measured in the dimension's base unit
    double totalTime = [seconds doubleValue] + [minutes doubleValue];
    passTest((totalTime == 61.0), @"Adds up to 61");
    
    NSUnitAcceleration *ua = [[NSUnitAcceleration alloc] initWithSymbol:@"m/s2"];
    NSUnitConverter *c = [[ua class] baseUnit];
    NSLog(@"ua = %@", ua);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        runTests();
    }
    return 0;
}
