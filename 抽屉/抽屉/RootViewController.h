//
//  RootViewController.h
//  抽屉
//
//  Created by qianfeng007 on 15/10/12.
//  Copyright (c) 2015年 TangDuck. All rights reserved.
//

#import "BaseViewController.h"

@interface RootViewController : BaseViewController

@property(nonatomic,strong)UIViewController *midViewController;

@property(nonatomic,strong)UIViewController *rightViewController;

+(RootViewController *)shareSingle;


@end
