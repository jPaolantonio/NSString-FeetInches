//
//  NSString+FeetInches.m
//  HowAboutWe
//
//  Created by James on 8/13/12.
//  Copyright (c) 2012 How About We. All rights reserved.
//

#import "NSString+FeetInches.h"

@implementation NSString (FeetInches)

- (NSString *)feetInchesFromInches {
    float totalInches = [self floatValue];
    
    int feet = floorf(totalInches/12);
    int inches = totalInches - (feet*12);
    
    return [NSString stringWithFormat:@"%i'%i\"", feet, inches];
}

@end
