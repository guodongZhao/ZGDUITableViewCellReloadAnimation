# ZGDUITableViewCellReloadAnimation
================
炫酷版UITableViewCell刷新 和 tableView 滚动cell 加载动画   你只需要一步
-----------------------------

## `Show`
![](https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation/ZGDUITableViewCellReloadAnimationDemo/testShow.gif)

### 对UITableView进行类别拓展   使用者为UITableView对象

#### `实现效果`
```objc
typedef NS_ENUM(NSUInteger, CellReloadAnimationStyle){
    // 动画效果从底向上
    CellReloadAnimationStyleBottomToTop = 0,
    // 动画效果从右向左
    CellReloadAnimationStyleRightToLeft,
    // 动画效果从左向右
    CellReloadAnimationStyleLeftToRight
};
```

##### `Method`
```objc
/**
 *  cell滚动刷新动画
 *
 *  @param cell          cell
 *  @param animationType 动画效果
 */
- (void)addReloadingAnimationWithTableViewCell:(UITableViewCell *)cell
andAnimationType:(CellReloadAnimationStyle)animationType;
```
