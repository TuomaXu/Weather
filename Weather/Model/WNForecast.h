//
//  Forecast.h
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "MTLModel.h"
#import "WNWeather.h"
@interface WNForecast : MTLModel<MTLJSONSerializing>
/**
 *  发布日期
 */
@property (nonatomic,copy,readonly)NSDate * publicDate;
/**
 *  压强
 */
@property (nonatomic,copy,readonly)NSNumber * pressure;
/**
 *  湿度
 */
@property (nonatomic,copy,readonly)NSNumber * humidity;
/**
 *  天气状况
 */
@property (nonatomic,copy,readonly)NSArray * weathers;
/**
 *  风速
 */
@property (nonatomic,copy,readonly)NSNumber * windSpeed;
/**
 *  风向
 */
@property (nonatomic,copy,readonly)NSNumber * windDegree;
/**
 *  日均气温
 */
@property (nonatomic,copy,readonly)NSNumber * dayTemperature;
/**
 *  夜均气温
 */
@property (nonatomic,copy,readonly)NSNumber * nightTemperature;
/**
 *  清晨气温
 */
@property (nonatomic,copy,readonly)NSNumber *morningTemperature;
/**
 *  傍晚气温
 */
@property (nonatomic,copy,readonly)NSNumber * eveningTemperature;
/**
 *  最低气温
 */
@property (nonatomic,copy,readonly)NSNumber * minTemperature;
/**
 *  最高气温
 */
@property (nonatomic,copy,readonly)NSNumber * maxTemperature;
@end
