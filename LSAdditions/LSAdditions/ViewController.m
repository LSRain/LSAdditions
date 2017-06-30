//
//  ViewController.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "ViewController.h"
#import "LSAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor ls_colorWithHex:0xff0000];
    
    NSLog(@"tody is: %zd", [NSDate ls_getNowWeekday]);
    
    ///>>>>>> NSString Category >>>>>>>>
    NSLog(@"md5:abc: %@", [NSString ls_md5HexDigest:@"abc"]);
    
    NSString *test = [NSString string];
    NSLog(@"ls_docDir: %@", [test ls_docDir]);
    NSLog(@"ls_cacheDir: %@", [test ls_cacheDir]);
    NSLog(@"ls_tmpDir: %@", [test ls_tmpDir]);
    
    NSLog(@"ls_fileSize: %zd", [test ls_fileSize]);
    
    UILabel *testLabel = [UILabel ls_labelWithText:@"test" fontSize:14 color:[UIColor ls_randomColor]];
    NSLog(@"ls_textSizeWithContentSize.Width: %f", [testLabel.text ls_textSizeWithContentSize:CGSizeZero font:[UIFont systemFontOfSize:14]].width);
    NSLog(@"ls_textHeightWithContentWidth: %f", [testLabel.text ls_textHeightWithContentWidth:10 font:[UIFont systemFontOfSize:14]]);
    
    NSLog(@"XOR: %@", [NSString ls_HexXOR:@"12" withPinHex:@"F7"]); // or f7
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
