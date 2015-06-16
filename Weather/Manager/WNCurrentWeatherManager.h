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
/**
 *  获取当前位置的天气情况
*/
+(void)getCurrentWeatherByCurrentLocationSuccess:(void (^)( id responseObject))successBlock;
/**
 *  获取指定位置的天气情况
 *
 *  @param location         地理位置
 *  @param successBlock     成功回调
 */
+(void)getCurrentWeatherByLocation:(CLLocation*)location success:(void (^)( id responseObject))successBlock;
/**
 *  获取指定城市ID的天气情况
 *
 *  @param cityID           城市ID
 *  @param successBlock     成功回调
 */
+(void)getCurrentWeatherByID:(NSString*)cityID success:(void (^)( id responseObject))successBlock;
/**
 *  获取指定城市的天气
 *
 *  @param cityName         城市名称
 *  @param successBlock     成功回调
 */
+(void)getCurrentWeatherByCityName:(NSString*)cityName success:(void (^)( id responseObject))successBlock;

@end
