//
//  UIView+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LSAddition)

/**
 *  快速根据xib创建View
 */
+ (instancetype)ls_viewFromXib;

/**
 Screenshot
 返回屏幕截图

 @return Screenshot
 */
- (UIImage *)ls_snapshotImage;

@end
