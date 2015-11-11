//
//  LocationManager.m
//  LocationDemo
//
//  Created by qianfeng007 on 15/10/13.
//  Copyright (c) 2015年 TangDuck. All rights reserved.
//

#import "LocationManager.h"
static LocationManager *location = nil;
@implementation LocationManager


//类方法取得location对象 单例
+(LocationManager *)manager
{
    @synchronized(self)
    {
        if(!location)
        {
            location = [[self alloc]init];
        }
    }
    return location;
}

//修改初始化方法
-(id)init
{
    self = [super init];
    if(self)
    {
        //实例化定位管理器
        self.manager = [[CLLocationManager alloc]init];
        //设置代理
        self.manager.delegate = self;
        
        //当使用时向用户要求授权
        [self.manager requestAlwaysAuthorization];
        
        //开始定位
        [self.manager startUpdatingLocation];
    }
    return self;
}


//获取用户的定位信息  获取的是经度 和纬度
//CLLocationCoordinate2D 是一个结构体 经度 纬度
-(CLLocationCoordinate2D)getUserLocationInfo
{
    return self.manager.location.coordinate;
}

#pragma mark - CLLocationManagerDelegate

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    //当用户的定位信息更新时调用
    CLLocation *location = [locations lastObject];
    
    //打印位置信息
    NSLog(@"%f %f",location.coordinate.longitude,location.coordinate.latitude);
    
    //停止定位
    [manager stopUpdatingLocation];
}














@end
