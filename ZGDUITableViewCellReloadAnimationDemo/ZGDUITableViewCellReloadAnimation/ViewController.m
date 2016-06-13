//
//  ViewController.m
//  ZGDUITableViewCellReloadAnimation
//  https://github.com/guodongZhao/ZGDUITableViewCellReloadAnimation.git
//  Created by 赵国栋 on 16/6/13.
//  Copyright © 2016年 bjqttd. All rights reserved.
//  https://github.com/guodongZhao

#import "ViewController.h"

#import "UITableView+ReloadAnimation.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

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
    [tableView addReloadingAnimationWithTableViewCell:cell andAnimationType:CellReloadAnimationStyleLeftToRight];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

#pragma mark -
#pragma mark lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

@end
