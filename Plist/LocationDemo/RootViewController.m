//
//  RootViewController.m
//  LocationDemo
//
//  Created by qianfeng007 on 15/10/13.
//  Copyright (c) 2015年 TangDuck. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController


-(void)initData
{
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSString *plistpath = [path stringByAppendingString:@"/文章.plist"];
    
    NSMutableArray *arr = [[NSMutableArray alloc]initWithContentsOfFile:plistpath];
    
    
    if(arr == nil)
    {
        arr = [[NSMutableArray alloc]initWithCapacity:0];
    }
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    [dic setValue:@"根据你的结果，你对心中的TA，似乎是喜欢里面透着爱。心理研究表明，当你爱上一个人的时候，你通常是喜欢TA的。但你只是喜欢一个人的时候，并不能说明你爱上了TA。“能成为密友的，总都透着爱”，你们之间的爱似乎是以深刻的友谊为基础的。如果说激情之恋总是带着神秘，你们之间似乎更多的是信任与支持。你们玩得很好，也很合拍，但与一般朋友不一样，你对TA几乎无话不谈，但对TA有很强的精神依恋，不能忍受对放的忽视与背叛。你希望TA心里，你是唯一的，重要的存在。你可能因为TA而显得斤斤计较或小心翼翼，TA对你的冷漠或者对别人的热情都可能让你感到很受伤。你对TA爱的程度更深，可能更觉的自己离不开TA，但又觉得TA的幸福才是你最看重的。如果你陷入这样的纠结，你可能已体会到爱一个人会有的沉重与痛苦。也有可能，你不欣赏TA，不赞同TA，也和TA没有什么相似的步调；你也对TA没有什么迷醉的感觉。嗯，如果是这种情况，TA大概不属于你喜欢或爱的人之内吧" forKey:@"detail"];
    
    [arr addObject:dic];
    
    [arr writeToFile:plistpath atomically:YES];
    
    NSMutableArray *data3 = [[NSMutableArray alloc]initWithContentsOfFile:plistpath];
    NSLog(@"%@",data3);
    NSLog(@"%@",plistpath);
    
    

    
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
