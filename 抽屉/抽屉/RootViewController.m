//
//  RootViewController.m
//  抽屉
//
//  Created by qianfeng007 on 15/10/12.
//  Copyright (c) 2015年 TangDuck. All rights reserved.
//

#import "RootViewController.h"

static RootViewController *rvc = nil;

@interface RootViewController ()<UIGestureRecognizerDelegate>
{
    //视图的回调
    UIView *_view;
}
@end

@implementation RootViewController


+(RootViewController *)shareSingle
{
    @synchronized(self)
    {
        if(!rvc)
        {
            rvc = [[self alloc]init];
            
        }
    }
    return rvc;
}


-(void)createView
{
    //添加左滑手势
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(showViewLeftController:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
     [self.midViewController.view addGestureRecognizer:swipeLeft];
  
    //添加右滑手势
    UISwipeGestureRecognizer *swipweRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(showViewRightController:)];
    swipweRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.midViewController.view addGestureRecognizer:swipweRight];
    
    //添加点击手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(resume)];
    [self.midViewController.view addGestureRecognizer:tap];
    
    
    NSLog(@"!!!!!!!!!!!!!");
   
}

//点击事件
-(void)resume
{
    [UIView animateWithDuration:0.2 animations:^{
        self.midViewController.view.transform = CGAffineTransformMakeScale(1.f, 1.f);
        
        [self.midViewController.view setXOffset:0];
    }];
}


-(void)setMidViewController:(UIViewController *)midViewController
{
    if(_midViewController != midViewController)
    {
        _midViewController = midViewController;
    }
    [self.view addSubview:_midViewController.view];
}


//回去
-(void)showViewLeftController:(UISwipeGestureRecognizer *)swipe
{
   if (swipe && _midViewController.view.frame.origin.x != 0)
    {
        
        if(self.rightViewController != nil)
        {
            NSLog(@"22222222");
            [UIView animateWithDuration:0.3 animations:^{
                self.midViewController.view.transform = CGAffineTransformMakeScale(1, 1);
                  [self.midViewController.view setXOffset:0];
            }];
            
          
            
        }
    
       
    }
    
}

-(void)showViewRightController:(UISwipeGestureRecognizer *)swipe
{
    if (swipe)
    {
        [self.view insertSubview:self.rightViewController.view belowSubview:self.midViewController.view];
        if(self.rightViewController != nil)
        {
            //  NSLog(@"22222222");
            [UIView animateWithDuration:0.3 animations:^{
                
                [self.midViewController.view setXOffset:ScreenWidth/2 + ScreenWidth/6];
                 self.midViewController.view.transform = CGAffineTransformMakeScale(0.8, 0.8);
            }];
            
        }
        
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
