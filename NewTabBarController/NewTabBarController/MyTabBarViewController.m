//
//  MyTabBarViewController.m
//  NewTabBarController
//
//  Created by qianfeng007 on 15/9/10.
//  Copyright (c) 2015年 qianfeng007. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FouthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"
#import "SeventhViewController.h"
@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createSubViewController];
    // Do any additional setup after loading the view.
}
-(void)createSubViewController
{
    FirstViewController *first = [[FirstViewController alloc]init];
    first.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    SecondViewController *second =[[SecondViewController alloc]init];
    second.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    ThirdViewController *third = [[ThirdViewController alloc]init];
    third.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:2];
    FouthViewController *fouth = [[FouthViewController alloc]init];
    fouth.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:3];
    FifthViewController *fifth = [[FifthViewController alloc]init];
    fifth.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:4];
    SixthViewController *sixth = [[SixthViewController alloc]init];
    sixth.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMore tag:5];
    SeventhViewController *seventh = [[SeventhViewController alloc]init];
    seventh.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:7];
    //将firstViewController装入NavigationController
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:first];
    Release_Safe(first);
    //设置正常显示图
    UIImage *image = [UIImage imageNamed:@"tab_0.png"];
    UIImage *selectedImage = [UIImage imageNamed:@"tab_c0.png"];
    nav.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:image selectedImage:selectedImage];
    self.viewControllers = @[nav,second,third,fouth,fifth,sixth,seventh];
    Release_Safe(nav);
    Release_Safe(second);
    Release_Safe(third);
    Release_Safe(fouth);
    Release_Safe(fifth);
    Release_Safe(sixth);
    Release_Safe(seventh);
    
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
