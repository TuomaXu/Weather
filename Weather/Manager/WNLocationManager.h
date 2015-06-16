//
//  WNLocationManager.h
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void(^GetLocationSuccess)(CLLocationManager* manager,CLLocation* location);
typedef void(^GetLocationFailed)(CLLocationManager* manager,NSError* err);

@interface WNLocationManager : NSObject
@property (nonatomic,strong,readonly)CLLocation * location;
/**
 *  获取地理位置控制器单例
 *
 *  @return 地理位置控制器单例
 */
+(instancetype)shareInstance;
/**
 *  获取当前所在的地理位置
 *
 *  @param successBlock 成功回调
 *  @param failedBlock  失败回调
 */
-(void)getCurrentLocationSuccess:(GetLocationSuccess)successBlock failed:(GetLocationFailed)failedBlock;
@end
