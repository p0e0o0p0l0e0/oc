//
//  main.m
//  Callbacks
//
//  Created by linqi zhang on 16/6/3.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		BNRLogger *logger = [[BNRLogger alloc] init];
		
		__unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
											   target:logger
											 selector:@selector(updateLastTime:)
											 userInfo:nil
											  repeats:YES];
		
//		__unused NSTimer *timer = [NSTimer timerWithTimeInterval:2.0
//																   target:logger
//																 selector:@selector(updateLastTime:)
//																 userInfo:nil
//																  repeats:YES];
//		
//		[[NSRunLoop currentRunLoop] addTimer:timer forMode: NSRunLoopCommonModes];
		
		[[NSRunLoop currentRunLoop] run];
	}
    return 0;
}
