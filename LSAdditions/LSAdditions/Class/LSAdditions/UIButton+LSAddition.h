//
//  UIButton+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (LSAddition)

/**
 create UIButton

 @param title button title
 @param fontSize fontSize
 @param normalColor normalColor
 @param selectedColor selectedColor
 @return UIButton
 */
+ (instancetype)ls_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;

@end
