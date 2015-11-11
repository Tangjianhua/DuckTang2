//
//  LocationManager.h
//  LocationDemo
//
//  Created by qianfeng007 on 15/10/13.
//  Copyright (c) 2015年 TangDuck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface LocationManager : NSObject <CLLocationManagerDelegate>
//声明一个定位信息管理器
@property(strong,nonatomic)CLLocationManager *manager;

//类方法取得location对象 单例
+(LocationManager *)manager;
//获取用户的定位信息  获取的是经度 和纬度
-(CLLocationCoordinate2D)getUserLocationInfo;

@end
