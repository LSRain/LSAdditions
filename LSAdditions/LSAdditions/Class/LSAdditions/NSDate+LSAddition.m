//
//  NSDate+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/16.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NSDate+LSAddition.h"

@implementation LSDateItem

- (NSString *)description
{
    return [NSString stringWithFormat:@"%zdDay-%zdHour:%zdMinute:%zdSecond", self.day, self.hour, self.minute, self.second];
}

@end

#ifdef __IPHONE_8_0

#define GregorianCalendar NSCalendarIdentifierGregorian
#else
#define GregorianCalendar NSGregorianCalendar

#endif

@implementation NSDate (LSAddition)

+ (NSInteger)ls_getNowWeekday {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:GregorianCalendar];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday |
    NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDate *now = [NSDate date];
    // 天朝代码:zh_CN
    calendar.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    comps = [calendar components:unitFlags fromDate:now];
    
    return [comps weekday];
}

- (LSDateItem *)ls_timeIntervalSinceDate:(NSDate *)anotherDate
{
    /// createdAtDate和nowDate之间的时间间隔
    NSTimeInterval interval = [self timeIntervalSinceDate:anotherDate];
    
    LSDateItem *item = [[LSDateItem alloc] init];
    
    /// Difference days
    int intInterval = (int)interval;
    int secondsPerDay = 24 * 3600;
    item.day = intInterval / secondsPerDay;
    
    /// Hour
    int secondsPerHour = 3600;
    item.hour = (intInterval % secondsPerDay) / secondsPerHour;
    
    /// Minute
    int secondsPerMinute = 60;
    item.minute = ((intInterval % secondsPerDay) % secondsPerHour) / secondsPerMinute;
    
    /// second
    item.second = ((intInterval % secondsPerDay) % secondsPerHour) % secondsPerMinute;
    
    return item;
}

- (BOOL)ls_isToday
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    return [selfCmps isEqual:nowCmps];
}


- (BOOL)ls_isYesterday
{
    /*
     self 2015-12-09 22:10:01 -> 2015-12-09 00:00:00
     now  2015-12-10 12:10:01 -> 2015-12-01 00:00:00
     yesterday : 0year 0month 1day 0hour 0minute 0second
     */
    
    /// NSDate * -> NSString * -> NSDate *
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    
    NSString *selfString = [fmt stringFromDate:self];
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    
    NSDate *selfDate = [fmt dateFromString:selfString];
    NSDate *nowDate = [fmt dateFromString:nowString];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == 1;
}

- (BOOL)ls_isTomorrow
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    
    NSString *selfString = [fmt stringFromDate:self];
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    
    NSDate *selfDate = [fmt dateFromString:selfString];
    NSDate *nowDate = [fmt dateFromString:nowString];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == -1;
}

- (BOOL)ls_isThisYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger selfYear = [calendar components:NSCalendarUnitYear fromDate:self].year;
    NSInteger nowYear = [calendar components:NSCalendarUnitYear fromDate:[NSDate date]].year;
    
    return selfYear == nowYear;
}

@end
