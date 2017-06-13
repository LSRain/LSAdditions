//
//  UIViewController+LSAddition.h
//  LSAdditions
//
//  Created by WangBiao on 2017/6/13.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LSAddition)

/**
 * add ChildViewController
 * 在当前视图控制器中添加子控制器&将子控制器的视图添加到 view 中
 *
 * @param childController childController
 * @param view            view
 */
- (void)ls_addChildController:(UIViewController *)childController intoView:(UIView *)view;

@end
