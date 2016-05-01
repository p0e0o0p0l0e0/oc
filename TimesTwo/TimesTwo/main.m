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
	}
    return 0;
}
