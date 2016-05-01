//
//  main.m
//  TimeAfterTime
//
//  Created by linqi zhang on 16/5/1.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
	    // insert code here...
		NSDate *now = [NSDate date];
		NSLog(@"This NSDate object lives at %p", now);
		NSLog(@"This date is %@", now);
		double seconds = [now timeIntervalSince1970];
		NSLog(@"It has been %f seconds since the start of 1970.", seconds);
		
		NSDate *later = [now dateByAddingTimeInterval:100000];
		NSLog(@"In 100,000 seconds it will be %@", later);
	}
    return 0;
}
