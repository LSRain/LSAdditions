//
//  NSAttributedString+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NSAttributedString+LSAddition.h"

@implementation NSAttributedString (LSAddition)

+ (instancetype)ls_imageTextWithImage:(UIImage *)image imageWH:(CGFloat)imageWH title:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor spacing:(CGFloat)spacing {
    
    /// textDic
    NSDictionary *titleDict = @{NSFontAttributeName: [UIFont systemFontOfSize:fontSize],
                                NSForegroundColorAttributeName: titleColor};
    NSDictionary *spacingDict = @{NSFontAttributeName: [UIFont systemFontOfSize:spacing]};
    
    /// imageText
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, imageWH, imageWH);
    NSAttributedString *imageText = [NSAttributedString attributedStringWithAttachment:attachment];
    
    /// lineText
    NSAttributedString *lineText = [[NSAttributedString alloc] initWithString:@"\n\n" attributes:spacingDict];
    
    /// button Text
    NSAttributedString *text = [[NSAttributedString alloc] initWithString:title attributes:titleDict];
    
    /// merge
    NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:imageText];
    [attM appendAttributedString:lineText];
    [attM appendAttributedString:text];
    
    return attM.copy;
}
@end
