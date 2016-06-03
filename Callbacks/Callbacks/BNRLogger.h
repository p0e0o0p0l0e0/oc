//
//  NSObject_BNRLogger.h
//  Callbacks
//
//  Created by linqi zhang on 16/6/3.
//  Copyright © 2016年 Linqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;

- (void)updateLastTime:(NSTimer *)t;

@end
