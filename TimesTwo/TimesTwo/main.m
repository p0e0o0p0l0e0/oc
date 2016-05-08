//
//  main.m
//  TimesTwo
//
//  Created by linqi zhang on 16/5/1.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		NSDate *currentTime = [NSDate date];
		NSLog(@"currentTime's value is %p", currentTime);
		
		NSDate *startTime = currentTime;
		
		sleep(2);
		
		currentTime = [NSDate date];
		NSLog(@"currentTime's value is now %p", currentTime);
		NSLog(@"The address of the orignal object is %p", startTime);
		
		currentTime = nil;
		NSLog(@"currentTime's value is %p", currentTime);
		
		NSString *str = @"I \u2661 NY!";
		NSLog(@"%@", str);
		
		NSDate *now = [NSDate date];
		NSString *formatStr = [NSString stringWithFormat:@"This date is %@", now];
		NSLog(@"%@", formatStr);
		
		NSUInteger count = [formatStr length];
		NSLog(@"formatStr length is %lu", count);
		
		NSString *fformatStr = @"This date is xx";
		
		if([formatStr isEqualToString:fformatStr])
		{
			NSLog(@"Equal!");
		}
		else
			NSLog(@"Not Equal!!");
		
		NSString *upperFormatStr = [formatStr uppercaseString];
		NSLog(@"upperFormatStr is %@", upperFormatStr);
	}
    return 0;
}
