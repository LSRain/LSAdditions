//
//  NSObject+LSAdditon.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NSObject+LSAdditon.h"

@implementation NSObject (LSAdditon)

+ (instancetype)ls_objectWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

@end
