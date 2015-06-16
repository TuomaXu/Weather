//
//  WNForecastManager.m
//  Weather
//
//  Created by WuNan on 15/6/16.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNForecastManager.h"
#import "WNNetWorkManager.h"
@implementation WNForecastManager

+(void)getForecastByCityID:(NSNumber*)cityID success:(void (^)( id responseObject))successBlock{
    NSDictionary* params = @{@"id":cityID};
    [self getForecastByParams:params success:successBlock];
}
+(void)getForecastByParams:(NSDictionary*)params success:(void (^)( id responseObject))successBlock{
    NSString * urlStr = @"http://api.openweathermap.org/data/2.5/forecast/daily";
    NSMutableDictionary * tempParams = [params mutableCopy];
    [tempParams addEntriesFromDictionary:@{
                                     @"lang":@"zh_cn",
                                     @"units":@"metric",
                                     }];
    [WNNetWorkManager GET:urlStr params:tempParams success:successBlock];
}
@end
