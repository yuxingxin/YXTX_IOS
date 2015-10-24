//
//  SLHomeViewController.m
//  YXTX
//
//  Created by 刘信 on 15/10/20.
//  Copyright © 2015年 com.yuxingxin.yxtx. All rights reserved.
//

#import "SLHomeViewController.h"

@interface SLHomeViewController ()

@end

@implementation SLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"主页"];
    [self setHidesBottomBarWhenPushed:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
