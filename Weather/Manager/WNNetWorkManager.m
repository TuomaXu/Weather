//
//  WNNetWorkManager.m
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNNetWorkManager.h"
#import <AFNetworking/UIKit+AFNetworking.h>
#import <SVProgressHUD/SVProgressHUD.h>

@implementation WNNetWorkManager
static AFNetworkReachabilityManager* reachbilityManager;
+(void)load {
    [super load];
    reachbilityManager = [AFNetworkReachabilityManager managerForDomain:@"www.baidu.com"];
    [reachbilityManager startMonitoring];
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

+(void)GET:(NSString*)urlStr params:(NSDictionary*)params success:(void (^)( id responseObject))successBlock {
    [[AFHTTPRequestOperationManager manager]GET:urlStr parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        [SVProgressHUD showErrorWithStatus:@"Net Error"];
    }];
}

#pragma setter && getter 
+(AFNetworkReachabilityManager*)netReachbilityManager{
    return reachbilityManager;
}
+(void)setNetReachbilityStatusChangeBlock:(void (^)(AFNetworkReachabilityStatus status))block; {
    [reachbilityManager setReachabilityStatusChangeBlock:block];
}
@end


