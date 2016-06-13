//
//  UIBarButtonItem+Helper.h
//
//
//  Created by bjqttd on 16/1/19.
//  Copyright (c) 2016年 All rights reserved.
//

#import <UIKit/UIKit.h>

// 常规字体颜色
#define kNormalColor [UIColor redColor]
// 高亮字体颜色
#define kHighlightedColor [UIColor yellowColor]
// 字体大小
#define kFontOfSize 15

@interface UIBarButtonItem (Helper)

// 文字
// 固定的文字颜色
- (instancetype)initWithTitle:(NSString *)title target:(id)target action:(SEL)action;
+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;
// 自定义的文字颜色
- (instancetype)initWithTitle:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action;
+ (instancetype)itemWithTitle:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action;

// 图片
- (instancetype)initWithImage:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action;
+ (instancetype)itemWithImage:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action;

// 图片+文字 纵向排版
+ (instancetype)initWithImage:(NSString *)image hImage:(NSString *)hImage title:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action;
- (instancetype)initWithImage:(NSString *)image hImage:(NSString *)hImage title:(NSString *)title nColor:(UIColor *)nColor hColor:(UIColor *)hColor target:(id)target action:(SEL)action;

@end
