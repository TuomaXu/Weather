//
//  CurrentWeather.m
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//
#import "NSValueTransformer+WNTransformerAdditions.h"
#import "WNCurrentWeather.h"
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

@implementation WNCurrentWeather
+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
                 @"cityID":@"id",
                 @"cityName":@"name",
                 @"countryCode":@"sys.country",
                 @"sunrise":@"sys.sunrise",
                 @"sunset":@"sys.sunset",
                 @"coordinate":@"coord",
                 @"publicDate":@"dt",
                 @"pressure":@"main.pressure",
                 @"pressureGroundLevel":@"main.grnd_level",
                 @"pressureSeaLevel":@"main.sea_level",
                 @"temperature":@"main.temp",
                 @"temperatureMax":@"main.temp_max",
                 @"temperatureMin":@"main.temp_min",
                 @"humidity":@"main.humidity",
                 @"windDegree":@"wind.deg",
                 @"windSpeed":@"wind.speed",
                 @"weathers":@"weather",
             };
}
+ (NSValueTransformer *)coordinateJSONTransformer {
    return [MTLValueTransformer valueTransformerForName:WNCLLocationCoordinate2DValueTransformerName];
}
+ (NSValueTransformer *)weatherJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[WNWeather class]];
}
+ (NSValueTransformer *)publicDateJSONTransformer {
    return [MTLValueTransformer valueTransformerForName:WNDateValueTransformerName];
}
+(NSValueTransformer*)sunriseJSONTransformer {
    return [MTLValueTransformer valueTransformerForName:WNDateValueTransformerName];
}
+(NSValueTransformer*)sunsetJSONTransformer {
    return [MTLValueTransformer valueTransformerForName:WNDateValueTransformerName];
}


@end
