//
//  WNForecastManager.h
//  Weather
//
//  Created by WuNan on 15/6/16.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WNForecastManager : NSObject
/**
 *  根据城市ID获取天气预报
 *
 *  @param cityID       城市ID
 *  @param successBlock 请求成功时的回调
 */
+(void)getForecastByCityID:(NSNumber*)cityID success:(void (^)( id responseObject))successBlock;
@end
