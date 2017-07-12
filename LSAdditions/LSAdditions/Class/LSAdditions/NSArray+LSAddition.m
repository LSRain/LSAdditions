//
//  NSArray+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/7/12.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NSArray+LSAddition.h"

@implementation NSArray (LSAddition)

- (id)ls_randomObject{
    if (self.count) {
        return self[arc4random_uniform((u_int32_t)self.count)];
    }
    return nil;
}

@end
