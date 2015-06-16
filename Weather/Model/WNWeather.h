//
//  WNWeather.h
//  Weather
//
//  Created by WuNan on 15/6/16.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
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