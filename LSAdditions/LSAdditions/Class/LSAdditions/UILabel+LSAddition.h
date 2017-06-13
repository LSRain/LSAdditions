//
//  UILabel+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LSAddition)

/// Create UILabel
///
/// @param text     text
/// @param fontSize textSize
/// @param color    color
///
/// @return UILabel
+ (instancetype)ls_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color;

@end
