//
//  CurrentWeather.m
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//
#import "NSValueTransformer+WNTransformerAdditions.h"
#import "WNCurrentWeather.h"

@implementation WNCurrentWeather
+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
                 NSStringFromSelector(@selector(cityID)):@"id",
                 NSStringFromSelector(@selector(cityName)):@"name",
                 NSStringFromSelector(@selector(countryCode)):@"sys.country",
                 NSStringFromSelector(@selector(sunrise)):@"sys.sunrise",
                 NSStringFromSelector(@selector(sunset)):@"sys.sunset",
                 NSStringFromSelector(@selector(coordinate)):@"coord",
                 NSStringFromSelector(@selector(publicDate)):@"dt",
                 NSStringFromSelector(@selector(pressure)):@"main.pressure",
                 NSStringFromSelector(@selector(pressureGroundLevel)):@"main.grnd_level",
                 NSStringFromSelector(@selector(pressureSeaLevel)):@"main.sea_level",
                 NSStringFromSelector(@selector(temperature)):@"main.temp",
                 NSStringFromSelector(@selector(temperatureMax)):@"main.temp_max",
                 NSStringFromSelector(@selector(temperatureMin)):@"main.temp_min",
                 NSStringFromSelector(@selector(humidity)):@"main.humidity",
                 NSStringFromSelector(@selector(windDegree)):@"wind.deg",
                 NSStringFromSelector(@selector(windSpeed)):@"wind.speed",
                 NSStringFromSelector(@selector(weathers)):@"weather",
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
