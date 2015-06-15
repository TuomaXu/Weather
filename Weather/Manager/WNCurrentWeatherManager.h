//
//  WNCurrentWeatherManager.h
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface WNCurrentWeatherManager : NSObject
//获取当前位置的天气
-(void)getCurrentWeatherByCurrentLocationSuccess:(void (^)( id responseObject))successBlock;
//获取指定位置的天气
-(void)getCurrentWeatherByLocation:(CLLocation*)location success:(void (^)( id responseObject))successBlock;
//获取指定id的天气
-(void)getCurrentWeatherByID:(NSString*)id success:(void (^)( id responseObject))successBlock;
//获取指定城市的天气
-(void)getCurrentWeatherByCityName:(NSString*)cityName success:(void (^)( id responseObject))successBlock;

@end
