//
//  CurrentWeather.h
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <CoreLocation/CoreLocation.h>

@interface WNWeather : MTLModel<MTLJSONSerializing>
/**
 *  天气状况ID
 */
@property (nonatomic,copy,readonly)NSString* weatherID;
/**
 *  天气状况图标
 */
@property (nonatomic,copy,readonly)NSString* weatherIcon;
/**
 *  天气状况
 */
@property (nonatomic,copy,readonly)NSString* weatherMain;
/**
 *  天气状况描述
 */
@property (nonatomic,copy,readonly)NSString* weatherDesc;

@end

@interface WNCurrentWeather : MTLModel<MTLJSONSerializing>
/**
 *  城市ID
 */
@property (nonatomic,copy,readonly)NSString* cityID;
/**
 *  城市名称
 */
@property (nonatomic,copy,readonly)NSString* cityName;
/**
 *  国家编码, JP,CN etc.
 */
@property (nonatomic,copy,readonly)NSString* countryCode;
/**
 *  日出时刻
 */
@property (nonatomic,copy,readonly)NSDate * sunrise;
/**
 *  日落时刻
 */
@property (nonatomic,copy,readonly)NSDate * sunset;
/**
 *  经纬度
 */
@property (nonatomic,readonly)CLLocationCoordinate2D coordinate;
/**
 *  天气发布的日期
 */
@property (nonatomic,copy,readonly)NSDate * publicDate;
/**
 *  压强,     hPa
 */
@property (nonatomic,copy,readonly)NSNumber* pressure;
/**
 *  地平面压强
 */
@property (nonatomic,copy,readonly)NSNumber* pressureGroundLevel;
/**
 *  海平面压强
 */
@property (nonatomic,copy,readonly)NSNumber* pressureSeaLevel;
/**
 *  当前气温, 摄氏度
 */
@property (nonatomic,copy,readonly)NSNumber* temperature;
/**
 *  当日最高气温
 */
@property (nonatomic,copy,readonly)NSNumber* temperatureMax;
/**
 *  当日最低气温
 */
@property (nonatomic,copy,readonly)NSNumber* temperatureMin;
/**
 *  湿度,    百分比
 */
@property (nonatomic,copy,readonly)NSNumber* humidity;
/**
 *  风向,     气象学角度
 */
@property (nonatomic,copy,readonly)NSNumber* windDegree;
/**
 *  风速,     米/秒
 */
@property (nonatomic,copy,readonly)NSNumber* windSpeed;
/**
 *  天气信息
 */
@property (nonatomic,copy,readonly)NSArray * weathers;


@end
