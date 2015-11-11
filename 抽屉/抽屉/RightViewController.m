//
//  RightViewController.m
//  抽屉
//
//  Created by qianfeng007 on 15/10/12.
//  Copyright (c) 2015年 TangDuck. All rights reserved.
//

#import "RightViewController.h"
static RightViewController *rvc = nil;

@interface RightViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
}

@end

@implementation RightViewController

+(RightViewController *)shareSingle
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
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, (ScreenWidth/2 + ScreenWidth/6)/0.87, ScreenHeight*0.8) style:UITableViewStylePlain];
    
    _tableView.delegate   = self;
    
    _tableView.dataSource = self;
    
    _tableView.backgroundColor = BlackColor;
    
    self.view.backgroundColor = BlackColor;
    [self.view addSubview:_tableView];
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



#pragma mark - UITableViewDelegate && UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"identifer";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifer];
    }
    cell.textLabel.text = @"454554";
    cell.backgroundColor = BlackColor;
    return cell;
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
