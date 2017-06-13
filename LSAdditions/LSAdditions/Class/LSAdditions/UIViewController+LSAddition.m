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
    
    /* 
     * add ChildViewController
     * 添加子控制器 － 否则响应者链条会被打断，导致事件无法正常传递，而且错误非常难改！
     */
    [self addChildViewController:childController];
    
    /// addChildVc view
    [view addSubview:childController.view];
    
    /// finish
    [childController didMoveToParentViewController:self];
}

@end
