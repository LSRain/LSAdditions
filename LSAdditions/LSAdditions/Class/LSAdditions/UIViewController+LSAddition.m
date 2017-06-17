//
//  UIViewController+LSAddition.m
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "UIViewController+LSAddition.h"

@implementation UIViewController (LSAddition)

- (void)ls_addChildController:(UIViewController *)childController intoView:(UIView *)view  {
    [self addChildViewController:childController];
    [view addSubview:childController.view];
    [childController didMoveToParentViewController:self];
}

@end
