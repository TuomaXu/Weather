//
//  WNLocationManager.m
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//
#import "WNLocationManager.h"

@interface  WNLocationManager()<CLLocationManagerDelegate>
@property (nonatomic,strong) CLLocationManager* locationManager;
@property (nonatomic,copy) GetLocationSuccess success;
@property (nonatomic,copy) GetLocationFailed failed;
@end
@implementation WNLocationManager
#pragma mark - get location manager singleton
/**
 *  获取locationManger单例
 */
static WNLocationManager * manager;
+(instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [WNLocationManager new];
        manager.locationManager = [CLLocationManager new];
        //requestWhenInUseAuthrization是iOS8之后新出的API 兼容性检测
        if ([manager.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
            [manager.locationManager requestWhenInUseAuthorization];
        }
    });
    return manager;
}
/**
 *  获取位置信息
 *
 *  @param successBlock 获取成功执行的block
 *  @param failedBlock  获取失败执行的block
 */
-(void)getCurrentLocationSuccess:(GetLocationSuccess)successBlock failed:(GetLocationFailed)failedBlock {
    manager.locationManager.delegate = self;
    [manager.locationManager startUpdatingLocation];
    self.success = successBlock;
    self.failed = failedBlock;
}
#pragma mark - location manager delegate

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    [manager stopUpdatingLocation];
    if (!self.success) {
        return;
    }
    self.success(manager,locations.lastObject);
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    [manager stopUpdatingLocation];
    if (!self.failed) {
        return;
    }
    self.failed(manager,error);
}

#pragma setter && getter
/**
 *  @return 获取上一次得到的location;如果从未获取过locaiton，则返回nil
 */
-(CLLocation *)location {
    return self.locationManager.location;
}
@end
