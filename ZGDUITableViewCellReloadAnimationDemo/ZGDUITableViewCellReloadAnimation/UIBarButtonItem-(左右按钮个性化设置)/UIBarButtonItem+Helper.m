//
//  UIBarButtonItem+Helper.m
//  
//
//  Created by bjqttd on 16/1/19.
//  Copyright (c) 2016年 All rights reserved.
//

#import "UIBarButtonItem+Helper.h"
#import "UIButtonDockItem.h"

@implementation UIBarButtonItem (Helper)
// 文字
// 固定的文字颜色
- (instancetype)initWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [self initWithTitle:title nColor:kNormalColor hColor:kHighlightedColor target:target action:action]; 
}
// 文字
// 固定的文字颜色
+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [self itemWithTitle:title nColor:kNormalColor hColor:kHighlightedColor target:target action:action];
}
// 自定义的文字颜色
- (instancetype)initWithTitle:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:nColor forState:UIControlStateNormal];
    [btn setTitleColor:hColor forState:UIControlStateHighlighted];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.titleLabel.font = [UIFont systemFontOfSize:kFontOfSize];
    btn.frame = CGRectMake(0, 0, 50, 30);
    CGSize size = [title sizeWithAttributes:@{
                                              NSFontAttributeName : [UIFont systemFontOfSize:kFontOfSize]
                                              }];
    btn.frame = CGRectMake(0, 0, size.width, 30);
    return [self initWithCustomView:btn];
}
// 自定义的文字颜色
+ (instancetype)itemWithTitle:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithTitle:title nColor:nColor hColor:hColor target:target action:action];
}

// 图片
- (instancetype)initWithImage:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:hImage] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
//    UIImage *hNmage = [UIImage imageNamed:image];
//    btn.frame = CGRectMake(0, 0, hNmage.size.width, hNmage.size.height);
    btn.frame = CGRectMake(0, 0, 30, 30);
    return [self initWithCustomView:btn];
}

+ (instancetype)itemWithImage:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithImage:image hImage:hImage target:target action:action];
}

// 图片+文字 纵向排版
+ (instancetype)initWithImage:(NSString *)image hImage:(NSString *)hImage title:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithImage:image hImage:hImage title:title nColor:nColor hColor:hColor target:target action:action];
}

// 图片+文字 纵向排版
- (instancetype)initWithImage:(NSString *)image hImage:(NSString *)hImage title:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action
{
    ZGDDockItem *btn = [ZGDDockItem buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:hImage] forState:UIControlStateHighlighted];
    [btn setTitleColor:nColor forState:UIControlStateNormal];
    [btn setTitleColor:hColor forState:UIControlStateHighlighted];
    [btn setTitle:title forState:UIControlStateNormal];
//    btn.frame = CGRectMake(0, 0, 50, 30);
    CGSize size = [title sizeWithAttributes:@{
                                              NSFontAttributeName : [UIFont systemFontOfSize:kFontOfSize]
                                              }];
    btn.frame = CGRectMake(0, 0, size.width, 30);
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    return [self initWithCustomView:btn];
}

@end
