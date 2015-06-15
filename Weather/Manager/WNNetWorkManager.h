//
//  WNNetWorkManager.h
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface WNNetWorkManager : NSObject
/**
 *  获取网络状况管理器
 *
 */
+(AFNetworkReachabilityManager*)netReachbilityManager;
/**
 *  设置网络状况变化时出发的回调
 */
+(void)setNetReachbilityStatusChangeBlock:(void (^)(AFNetworkReachabilityStatus status))block;
/**
 *  Get请求
 *
 *  @param urlStr
 *  @param params
 *  @param successBlock
 */
+(void)GET:(NSString*)urlStr params:(NSDictionary*)params success:(void (^)( id responseObject))successBlock;
@end
