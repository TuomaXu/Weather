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
             @"weatherID":@"id",
             @"weatherIcon":@"icon",
             @"weatherMain":@"main",
             @"weatherDesc":@"description"
             };
}
@end