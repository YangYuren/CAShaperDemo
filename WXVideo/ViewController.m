//
//  ViewController.m
//  WXVideo
//
//  Created by Yang on 2017/9/22.
//  Copyright © 2017年 Johnny. All rights reserved.
//

#import "ViewController.h"
#import "AYWeChatView.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) AYWeChatView *pullView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Yuren is Ok
    self.pullView = [[AYWeChatView alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) / 2) - 25, -64, 50, 30)];
    [self.tableView addSubview:self.pullView];
    
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = @"杨老师";
    cell.textLabel.textColor = [UIColor whiteColor];
    return cell;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.pullView animationWith:scrollView.contentOffset.y];
}

@end
