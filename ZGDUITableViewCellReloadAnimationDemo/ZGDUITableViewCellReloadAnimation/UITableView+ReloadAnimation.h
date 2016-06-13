//
//  UITableView+ReloadAnimation.h
//  ZGDUITableViewCellReloadAnimation
//  https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation.git
//  Created by 赵国栋 on 16/6/13.
//  Copyright © 2016年 bjqttd. All rights reserved.
//  https://github.com/guodongZhao

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, CellReloadAnimationStyle){
    // 动画效果从底向上
    CellReloadAnimationStyleBottomToTop = 0,
    // 动画效果从右向左
    CellReloadAnimationStyleRightToLeft,
    // 动画效果从左向右
    CellReloadAnimationStyleLeftToRight
};

@interface UITableView (ReloadAnimation)

/**
 *  cell滚动刷新动画
 *
 *  @param cell          cell
 *  @param animationType 动画效果
 */
- (void)addReloadingAnimationWithTableViewCell:(UITableViewCell *)cell andAnimationType:(CellReloadAnimationStyle)animationType;

@end






//  https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation.git
//  Copyright © 2016年 bjqttd. All rights reserved.
//  https://github.com/guodongZhao
