//
//  UIButton+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "UIButton+LSAddition.h"

@implementation UIButton (LSAddition)

+ (instancetype)ls_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor {
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:selectedColor forState:UIControlStateSelected];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [button sizeToFit];
    
    return button;
}

@end
