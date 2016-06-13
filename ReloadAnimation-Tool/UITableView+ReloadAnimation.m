//
//  UITableView+ReloadAnimation.m
//  ZGDUITableViewCellReloadAnimation
//  https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation.git
//  Created by 赵国栋 on 16/6/13.
//  Copyright © 2016年 bjqttd. All rights reserved.
//  https://github.com/guodongZhao

#import "UITableView+ReloadAnimation.h"

@implementation UITableView (ReloadAnimation)
/**
 *  cell滚动刷新动画
 *
 *  @param cell          cell
 *  @param animationType 动画效果
 */
- (void)addReloadingAnimationWithTableViewCell:(UITableViewCell *)cell andAnimationType:(CellReloadAnimationStyle)animationType
{
    
    switch (animationType) {
        case CellReloadAnimationStyleBottomToTop:
        {
//            NSLog(@"自下向上");
            UIView *cellContentView = [cell contentView];
            CGFloat rotationAngleDegrees = -30;
            CGFloat rotationAngleRadians = rotationAngleDegrees * (M_PI/180);
            CGPoint offsetPositioning = CGPointMake(0, cell.contentView.frame.size.height*4);
            CATransform3D transform = CATransform3DIdentity;
            transform = CATransform3DRotate(transform, rotationAngleRadians, -50.0, 0.0, 1.0);
            transform = CATransform3DTranslate(transform, offsetPositioning.x, offsetPositioning.y, -50.0);
            cellContentView.layer.transform = transform;
            cellContentView.layer.opacity = 0.8;
            
            [UIView animateWithDuration:0.65 delay:00 usingSpringWithDamping:0.85 initialSpringVelocity:0.8 options:0 animations:^{
                cellContentView.layer.transform = CATransform3DIdentity;
                cellContentView.layer.opacity = 1;
            } completion:^(BOOL finished) {}];
           break;
        }
        case CellReloadAnimationStyleRightToLeft:
        {
//            NSLog(@"自右向左");
            UIView *cellContentView  = [cell contentView];
            CGFloat rotationAngleDegrees = -30;
            CGFloat rotationAngleRadians = rotationAngleDegrees * (M_PI/180);
            CGPoint offsetPositioning = CGPointMake(500, -20.0);
            CATransform3D transform = CATransform3DIdentity;
            transform = CATransform3DRotate(transform, rotationAngleRadians, -50.0, 0.0, 1.0);
            transform = CATransform3DTranslate(transform, offsetPositioning.x, offsetPositioning.y, -50.0);
            cellContentView.layer.transform = transform;
            cellContentView.layer.opacity = 0.8;
            
            [UIView animateWithDuration:.65 delay:0.0 usingSpringWithDamping:0.85 initialSpringVelocity:.8 options:0 animations:^{
                cellContentView.layer.transform = CATransform3DIdentity;
                cellContentView.layer.opacity = 1;
            } completion:^(BOOL finished) {}];
            break;
        }
        case CellReloadAnimationStyleLeftToRight:
        {
//            NSLog(@"从左向右");
            UIView *cellContentView  = [cell contentView];
            CGFloat rotationAngleDegrees = 30;
            CGFloat rotationAngleRadians = rotationAngleDegrees * (M_PI/180);
            CGPoint offsetPositioning = CGPointMake(-500, 20.0);
            CATransform3D transform = CATransform3DIdentity;
            transform = CATransform3DRotate(transform, rotationAngleRadians, -50.0, 0.0, 1.0);
            transform = CATransform3DTranslate(transform, offsetPositioning.x, offsetPositioning.y, -50.0);
            cellContentView.layer.transform = transform;
            cellContentView.layer.opacity = 0.8;
            
            [UIView animateWithDuration:.65 delay:0.0 usingSpringWithDamping:0.85 initialSpringVelocity:.8 options:0 animations:^{
                cellContentView.layer.transform = CATransform3DIdentity;
                cellContentView.layer.opacity = 1;
            } completion:^(BOOL finished) {}];
            break;
        }
            
        default:
            break;
    }
}
@end

//  https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation.git
//  Copyright © 2016年 bjqttd. All rights reserved.
//  https://github.com/guodongZhao
