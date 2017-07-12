//
//  UIImage+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/7/12.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LSAddition)

/**
 生成一个圆形图片
 Generate a circular image

 @param name imageName
 @return circular image
 */
+ (instancetype)ls_circleImageNamed:(NSString *)name;

/**
 给定一个不要渲染的图片名称,生成一个最原始的图片
 Given a picture name that does not render, create a original image

 @param imageName imageName
 @return original image
 */
+ (UIImage *)ls_imageWithOriginalImageName:(NSString *)imageName;

@end
