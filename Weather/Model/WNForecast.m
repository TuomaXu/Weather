//
//  Forecast.m
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNForecast.h"
#import "NSValueTransformer+WNTransformerAdditions.h"
@implementation WNForecast
+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             NSStringFromSelector(@selector(publicDate)):@"dt",
             NSStringFromSelector(@selector(pressure)):@"pressure",
             NSStringFromSelector(@selector(humidity)):@"humidity",
             NSStringFromSelector(@selector(weathers)):@"weather",
             NSStringFromSelector(@selector(windSpeed)):@"speed",
             NSStringFromSelector(@selector(windDegree)):@"deg",
             NSStringFromSelector(@selector(dayTemperature)):@"temp.day",
             NSStringFromSelector(@selector(nightTemperature)):@"temp.night",
             NSStringFromSelector(@selector(morningTemperature)):@"temp.morn",
             NSStringFromSelector(@selector(eveningTemperature)):@"temp.eve",
             NSStringFromSelector(@selector(minTemperature)):@"temp.min",
             NSStringFromSelector(@selector(maxTemperature)):@"temp.max"
             };
}
+(NSValueTransformer *)publicDateJSONTransformer{
    return [NSValueTransformer valueTransformerForName:WNDateValueTransformerName];
}
+(NSValueTransformer *)weatherJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[WNWeather class]];
}
@end
