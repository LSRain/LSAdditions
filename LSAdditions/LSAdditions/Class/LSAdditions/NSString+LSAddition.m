//
//  NSString+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/17.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NSString+LSAddition.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (LSAddition)

+ (NSString *)ls_md5HexDigest:(NSString *)input {
    const char* str = [input UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    
    return ret;
}

# pragma mark - XOR
+ (NSString *)ls_HexXOR:(NSString *)panHex withPinHex:(NSString *)pinHex{
    if (panHex.length != pinHex.length)
    {
        return nil;
    }
    const char *panchar = [panHex UTF8String];
    const char *pinvchar = [pinHex UTF8String];
    NSString *temp = [[NSString alloc] init];
    for (int i = 0; i < panHex.length; i++)
    {
        int panValue = [self charToint:panchar[i]];
        int pinvValue = [self charToint:pinvchar[i]];
        temp = [temp stringByAppendingString:[NSString stringWithFormat:@"%X",panValue^pinvValue]];
    }
    return temp;
}

+ (int)charToint:(char)tempChar
{
    if (tempChar >= '0' && tempChar <='9')
    {
        return tempChar - '0';
    }
    else if (tempChar >= 'A' && tempChar <= 'F')
    {
        return tempChar - 'A' + 10;
    }
    else if (tempChar >= 'a' && tempChar <= 'f')
    {
        return tempChar - 'a' + 10;
    }
    return 0;
}
# pragma mark -

- (unsigned long long)ls_fileSize
{
    NSFileManager *mgr = [NSFileManager defaultManager];
    
    // file type
    NSDictionary *attrs = [mgr attributesOfItemAtPath:self error:nil];
    NSString *fileType = attrs.fileType;
    
    if ([fileType isEqualToString:NSFileTypeDirectory]) {
        // traversal of the folder
        NSDirectoryEnumerator *enumerator = [mgr enumeratorAtPath:self];

        unsigned long long fileSize = 0;
        for (NSString *subpath in enumerator) {
            NSString *fullSubpath = [self stringByAppendingPathComponent:subpath];
            fileSize += [mgr attributesOfItemAtPath:fullSubpath error:nil].fileSize;
        }
        return fileSize;
    }
    
    return attrs.fileSize;
}

- (instancetype)ls_cacheDir
{
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

- (instancetype)ls_docDir
{
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

- (instancetype)ls_tmpDir
{
    NSString *dir = NSTemporaryDirectory();
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

- (CGSize)ls_textSizeWithContentSize:(CGSize)size font:(UIFont *)font {
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size;
}

- (CGFloat)ls_textHeightWithContentWidth:(CGFloat)width font:(UIFont *)font {
    CGSize size = CGSizeMake(width, MAXFLOAT);
    return [self ls_textSizeWithContentSize:size font:font].height;
}

- (CGFloat)ls_textWidthWithContentHeight:(CGFloat)height font:(UIFont *)font {
    CGSize size = CGSizeMake(MAXFLOAT, height);
    return [self ls_textSizeWithContentSize:size font:font].width;
}

@end
