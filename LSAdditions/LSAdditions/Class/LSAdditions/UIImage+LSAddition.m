//
//  UIImage+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/7/12.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "UIImage+LSAddition.h"

@implementation UIImage (LSAddition)

+ (instancetype)ls_circleImageNamed:(NSString *)name
{
    return [[self imageNamed:name] ls_circleImage];
}

+ (UIImage *)ls_imageWithOriginalImageName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (instancetype)ls_circleImage
{
    // self -> circular image
    UIGraphicsBeginImageContext(self.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
