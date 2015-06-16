//
//  WNWeather.m
//  Weather
//
//  Created by WuNan on 15/6/16.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNWeather.h"

@implementation WNWeather
+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             NSStringFromSelector(@selector(weatherID)):@"id",
             NSStringFromSelector(@selector(weatherIcon)):@"icon",
             NSStringFromSelector(@selector(weatherMain)):@"main",
             NSStringFromSelector(@selector(weatherDesc)):@"description"
             };
}
@end