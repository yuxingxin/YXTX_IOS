//
//  SLCommonViewController.m
//  YXTX
//
//  Created by 刘信 on 15/10/24.
//  Copyright © 2015年 com.yuxingxin.yxtx. All rights reserved.
//

#import "SLCommonViewController.h"

@interface SLCommonViewController ()

@end

@implementation SLCommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:DEFAULT_BACKGROUND_COLOR];
    [self setHidesBottomBarWhenPushed:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

@end

