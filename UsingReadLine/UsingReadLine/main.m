//
//  main.m
//  UsingReadLine
//
//  Created by linqi zhang on 16/5/8.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSLog(@"Please input a string : ");
		const char *ch = readline(nil);
		NSString *str = [NSString stringWithUTF8String:ch];
		NSLog(@"input string is %@", str);
	}
    return 0;
}
