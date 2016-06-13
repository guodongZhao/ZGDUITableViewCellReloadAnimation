//
//  SXTDockItem.m
//  内部间距
//
//  Created by bjqttd on 16/1/2.
//  Copyright © 2014年  All rights reserved.
//

#import "UIButtonDockItem.h"

// 文字的高度比例  可自定义

#define kTitleRatio 0.3

@implementation ZGDDockItem

#pragma mark -
#pragma mark lifecycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 1.文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        // 2.文字大小
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        
        // 3.图片的内容模式
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

#pragma mark 覆盖父类在highlighted时的所有操作
- (void)setHighlighted:(BOOL)highlighted{}

#pragma mark 调整内部ImageView的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageWidth = contentRect.size.width;
    CGFloat imageHeight = contentRect.size.height * ( 1- kTitleRatio );
    return CGRectMake(imageX, imageY, imageWidth, imageHeight);
}

#pragma mark 调整内部UILabel的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleHeight = contentRect.size.height * kTitleRatio;
    CGFloat titleY = contentRect.size.height - titleHeight - 3;
    CGFloat titleWidth = contentRect.size.width;
    return CGRectMake(titleX, titleY, titleWidth, titleHeight);
}

@end
