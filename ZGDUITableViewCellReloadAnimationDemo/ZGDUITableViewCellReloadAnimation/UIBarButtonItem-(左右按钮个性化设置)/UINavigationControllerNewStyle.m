//
//  SXTNavigationController.m
//  01-UIBarButtonItem
//
//  Created by bjqttd on 16/1/19.
//  Copyright © 2016年 . All rights reserved.
//

#import "UINavigationControllerNewStyle.h"
// 需要和barbutton 同时使用
#import "UIBarButtonItem+Helper.h"

@interface UINavigationControllerNewStyle ()

@end

@implementation UINavigationControllerNewStyle

+ (void)initialize
{
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    // 不能直接设置backgroundColor的背景颜色
    // navigationBar.backgroundColor =XXX
    // 设置背景颜色
    navigationBar.barTintColor = [UIColor whiteColor];
    
    // 设置navBar是否半透明
    navigationBar.translucent = YES;
    
    // 设置左右按钮的颜色
    navigationBar.tintColor = [UIColor redColor];
    // 设置title文字状态
    NSDictionary *attributes = @{
                                 NSFontAttributeName : [UIFont boldSystemFontOfSize:17],
                                 NSForegroundColorAttributeName : [UIColor whiteColor]
                                 };
    [navigationBar setTitleTextAttributes:attributes];
    
    // 设置navBar的背景图片
    //[navigationBar setBackgroundImage:[UIImage imageNamed:@"image"] forBarMetrics:UIBarMetricsDefault];
    
    // 隐藏底部的线条
    //navigationBar.shadowImage = [UIImage new];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // 自定义返回按钮后，自带返回手势失效，此处重新激活手势
    //self.interactivePopGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self;
}



@end
