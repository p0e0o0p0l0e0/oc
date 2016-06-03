//
//  BNRLogger.m
//  Callbacks
//
//  Created by linqi zhang on 16/6/3.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
	static NSDateFormatter *dateFormatter = nil;
	
	if(!dateFormatter)
	{
		dateFormatter = [[NSDateFormatter alloc]init];
		[dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
		[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
		NSLog(@"created dateFormatter");
	}
	return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
	NSDate *now = [NSDate date];
	[self setLastTime:now];
	NSLog(@"Just set time to %@", self.lastTimeString);
}

@end
