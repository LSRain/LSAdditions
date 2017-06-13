//
//  NSAttributedString+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSAttributedString (LSAddition)

/**
 Using images and text graphics
 使用图像和文本图文混排

 @param image image
 @param imageWH image wide and hight
 @param title title
 @param fontSize titleSize
 @param titleColor titleColor
 @param spacing image and text spacing
 @return instancetype
 */
+ (instancetype)ls_imageTextWithImage:(UIImage *)image
                              imageWH:(CGFloat)imageWH
                                title:(NSString *)title
                             fontSize:(CGFloat)fontSize
                           titleColor:(UIColor *)titleColor
                              spacing:(CGFloat)spacing;

@end
