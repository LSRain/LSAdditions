//
//  UIScreen+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "UIScreen+LSAddition.h"

@implementation UIScreen (LSAddition)

+ (CGFloat)ls_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)ls_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)ls_scale {
    return [UIScreen mainScreen].scale;
}

@end
