//
//  NSString+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/17.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (LSAddition)

/**
 md5加密
 Md5 encryption

 @param input The string to be encrypted
 @return The encrypted string
 */
+ (NSString *)ls_md5HexDigest:(NSString *)input;


/**
 两个十六进制字符串进行异或计算
    - 异或计算常用于加密/解密
 Two hexadecimal strings are XORed
    - Exclusive OR calculations are commonly used for encryption / decryption
 
 @param panHex 异或值1 OR1
 @param pinHex 异或值2 OR2
 @return 异或运算后的值 - 16进制 XOR after operation - Hexadecimal
 */
+ (NSString *)ls_HexXOR:(NSString *)panHex withPinHex:(NSString *)pinHex;

/**
 生成文档目录全路径
 Generate the full path of the document directory
 
 @return full path of the document directory
 */
- (instancetype)ls_docDir;

/**
 生成缓存目录全路径
 Generates a cache directory full path

 @return cache directory full path
 */
- (instancetype)ls_cacheDir;

/**
 生成临时目录全路径
 Generate the full directory of the temporary directory

 @return full directory of the temporary directory
 */
- (instancetype)ls_tmpDir;

/**
 根据文件名计算出文件大小
 Calculate the file size based on the file name

 @return the file size
 */
- (unsigned long long)ls_fileSize;

/**
 根据字数的不同,返回UILabel中的text文字需要占用多少Size
 Depending on the number of words, the text of the text returned in UILabel

 @param size 约束的尺寸 Constrained size - you can use `CGSizeZero`
 @param font 文本字体 Text font
 @return 文本的实际尺寸 The actual size of the text
 */
- (CGSize)ls_textSizeWithContentSize:(CGSize)size font:(UIFont *)font;

/**
 根据文本宽度约束/文本字体 求得text的高
 The text is high according to the text width constraint / text font

 @param width 宽度约束 Width constraint
 @param font 文本字体 Text font
 @return 文本的实际高度 The actual height of the text
 */
- (CGFloat)ls_textHeightWithContentWidth:(CGFloat)width font:(UIFont *)font;

/**
 根据文本高度约束/文本字体 求得text的宽
 Find the width of the text based on the text height constraint / text font

 @param height 高度约束 Height constraint
 @param font 文本字体 Text font
 @return 文本宽度 Text width
 */
- (CGFloat)ls_textWidthWithContentHeight:(CGFloat)height font:(UIFont *)font;

@end
