//
//  UIScreen+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (LSAddition)

/**
 return screenWidth

 @return screenWidth
 */
+ (CGFloat)ls_screenWidth;

/**
 return screenHeight

 @return screenHeight
 */
+ (CGFloat)ls_screenHeight;

/**
 return screenScale

 @return screenScale
 */
+ (CGFloat)ls_scale;

@end
