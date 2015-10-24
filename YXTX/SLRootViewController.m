//
//  SLRootViewController.m
//  YXTX
//
//  Created by 刘信 on 15/9/30.
//  Copyright (c) 2015年 com.yuxingxin.yxtx. All rights reserved.
//

#import "SLRootViewController.h"

#import "SLNavicationController.h"
#import "SLHomeViewController.h"
#import "SLCategoryViewController.h"
#import "SLTagViewController.h"
#import "SLArchiveViewController.h"
#import "SLAboutViewController.h"

@interface SLRootViewController ()

@end

@implementation SLRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.tabBar setBackgroundColor:[UIColor whiteColor]];
    [self.tabBar setTintColor:DEFAULT_BLUE_COLOR];
    
    [self initChildViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) initChildViewControllers {
    NSMutableArray *childVCArray = [[NSMutableArray alloc] initWithCapacity:5];
    
    SLHomeViewController *homeVC = [[SLHomeViewController alloc] init];
    [homeVC.tabBarItem setTitle:@"主页"];
    [homeVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_home"]];
    [homeVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_home"]];
    
    SLNavicationController *homeNavC = [[SLNavicationController alloc] initWithRootViewController:homeVC];
    [childVCArray addObject:homeNavC];
    
    SLCategoryViewController *categoryVC = [[SLCategoryViewController alloc] init];
    [categoryVC.tabBarItem setTitle:@"分类"];
    [categoryVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_category"]];
    [categoryVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_category"]];
    
    SLNavicationController *categoryNavC = [[SLNavicationController alloc] initWithRootViewController:categoryVC];
    [childVCArray addObject:categoryNavC];
    
    SLTagViewController *tagVC = [[SLTagViewController alloc] init];
    [tagVC.tabBarItem setTitle:@"标签"];
    [tagVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_tag"]];
    [tagVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_tag"]];
    
    SLNavicationController *tagNavC = [[SLNavicationController alloc] initWithRootViewController:tagVC];
    [childVCArray addObject:tagNavC];
    
    SLArchiveViewController *archiveVC = [[SLArchiveViewController alloc] init];
    [archiveVC.tabBarItem setTitle:@"归档"];
    [archiveVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_archive"]];
    [archiveVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_archive"]];
    
    SLNavicationController *archiveNavC = [[SLNavicationController alloc] initWithRootViewController:archiveVC
                                           ];
    [childVCArray addObject:archiveNavC];
    
    SLAboutViewController *aboutVC = [[SLAboutViewController alloc] init];
    [aboutVC.tabBarItem setTitle:@"关于"];
    [aboutVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_about"]];
    [aboutVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_about"]];
    
    SLNavicationController *aboutNavC = [[SLNavicationController alloc] initWithRootViewController:aboutVC];
    [childVCArray addObject:aboutNavC];
    
    [self setViewControllers:childVCArray];
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
