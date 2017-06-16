//
//  NSDate+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/16.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSDateItem : NSObject

@property (nonatomic, assign) NSInteger day;
@property (nonatomic, assign) NSInteger hour;
@property (nonatomic, assign) NSInteger minute;
@property (nonatomic, assign) NSInteger second;

@end

@interface NSDate (LSAddition)

/**
 Today's week
 今天周几
 
 @return week
 */
+ (NSInteger)getNowWeekday;

- (LSDateItem *)ls_timeIntervalSinceDate:(NSDate *)anotherDate;

- (BOOL)ls_isToday;
- (BOOL)ls_isYesterday;
- (BOOL)ls_isTomorrow;
- (BOOL)ls_isThisYear;

@end
