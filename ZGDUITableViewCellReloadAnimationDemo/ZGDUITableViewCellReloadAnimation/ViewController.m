//
//  ViewController.m
//  ZGDUITableViewCellReloadAnimation
//  https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation.git
//  Created by 赵国栋 on 16/6/13.
//  Copyright © 2016年 bjqttd. All rights reserved.
//  https://github.com/guodongZhao

#import "ViewController.h"

#import "UITableView+ReloadAnimation.h"
#import "UIBarButtonItem+Helper.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, assign) CellReloadAnimationStyle animationType;

@end

@implementation ViewController
#pragma mark -
#pragma mark init tableView
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
    }
    return _tableView;
}

#pragma mark -
#pragma mark UITableViewDataSource
// 设置tableView 行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

// 设置每行内容  cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"CellID";
    //  1.从重用对象池中找不用的cell对象
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    //  2.如果没有找到就自己创建
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    //  3.设置cell的属性
    cell.imageView.image = [UIImage imageNamed:@"Bird.jpg"];
    NSString *str = [NSString stringWithFormat:@"这是第%zi行cell", indexPath.row];
    cell.textLabel.text = str;
    
    return cell;
}
#warning 在此处调用刷新动画
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 调用刷新cell动画
    [tableView addReloadingAnimationWithTableViewCell:cell andAnimationType:self.animationType];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

#pragma mark -
#pragma mark lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *item1 = [UIBarButtonItem itemWithTitle:@"从下向上" target:self action:@selector(item1Action)];
    UIBarButtonItem *item2 = [UIBarButtonItem itemWithTitle:@"从右向左" target:self action:@selector(item2Action)];
    UIBarButtonItem *item3 = [UIBarButtonItem itemWithTitle:@"从左向右" target:self action:@selector(item3Action)];
    
    self.navigationItem.leftBarButtonItems = @[item1, item2, item3];
    [self.view addSubview:self.tableView];
}
//从下向上
- (void)item1Action
{
    self.animationType = CellReloadAnimationStyleBottomToTop;
}
//从右向左
- (void)item2Action
{
    self.animationType = CellReloadAnimationStyleRightToLeft;
}
//从左向右
- (void)item3Action
{
    self.animationType = CellReloadAnimationStyleLeftToRight;
}

@end
