//
//  NSArray+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/7/12.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (LSAddition)

/**
 随机返回一个数组中的元素 (如果Array空，则返回nil)
 Randomly returns an array of elements (if Array is empty, it returns nil)

 @return Randomly elements
 */
- (id)ls_randomObject;

@end
