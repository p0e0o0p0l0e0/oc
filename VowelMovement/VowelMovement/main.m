//
//  main.m
//  VowelMovement
//
//  Created by linqi zhang on 16/6/3.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
//		NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
		
		NSArray *originalStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
		
		NSLog(@"original strings: %@", originalStrings);
		
		NSMutableArray *devowelizedStrings = [NSMutableArray array];
		
//		NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
		NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
		
		// declaration of block object
		void (^devowelizer)(id, NSUInteger, BOOL *);
		
		devowelizer = ^(id originalString, NSUInteger i, BOOL *stop){
			
			NSMutableString *newString = [NSMutableString stringWithString: originalString];
			
			for(NSString *s in vowels){
				
				NSRange fullRange = NSMakeRange(0, [newString length]);
				
				[newString replaceOccurrencesOfString: s
								   withString: @""
									  options: NSCaseInsensitiveSearch
										range: fullRange
				 ];
			}
			
			[devowelizedStrings addObject: newString];
			
		};
		
		[originalStrings enumerateObjectsUsingBlock:devowelizer];
		
		NSLog(@"devowel string is %@", devowelizedStrings);
	}
    return 0;
}
