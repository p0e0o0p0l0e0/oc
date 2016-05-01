//
//  main.m
//  MyHost
//
//  Created by linqi zhang on 16/5/1.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		NSHost *host = [NSHost currentHost];
		NSString *name = [host localizedName];
		NSLog(@"%@", name);
		
		
	}
    return 0;
}
