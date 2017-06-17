//
//  NSObject+LSAdditon.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LSAdditon)

/**
 Creating model objects using dictionary
 使用字典创建模型对象

 @param dict dictionary
 @return model
 */
+ (instancetype)ls_objectWithDict:(NSDictionary *)dict;

@end
