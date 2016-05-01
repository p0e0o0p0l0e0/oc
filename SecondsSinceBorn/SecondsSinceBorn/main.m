//
//  main.m
//  SecondsSinceBorn
//
//  Created by linqi zhang on 16/5/1.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
	    // insert code here...
		NSDate *laterDate = [[NSDate alloc] init];
		
		NSDateComponents *comps = [[NSDateComponents alloc] init];
		
		[comps setYear: 1983];
		[comps setMonth: 9];
		[comps setDay: 1];
		[comps setHour: 13];
		[comps setMinute: 10];
		[comps setSecond: 0];
		
		NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
		NSDate *dateOfBirth = [g dateFromComponents: comps];
		
		double seconds = [laterDate timeIntervalSinceDate: dateOfBirth];
		NSLog(@"Seconds since born: %@ is %f", dateOfBirth, seconds);
		
	}
    return 0;
}
