//
//  AppDelegate.m
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNAppDelegate.h"
#import "WNCurrentWeatherViewController.h"
#import "WNNetWorkManager.h"

#import <Aspects/Aspects.h>
#import <UMengAnalytics/MobClick.h>
typedef struct {
    int aa;
    int bb;
}T;

@interface WNAppDelegate ()

@end

@implementation WNAppDelegate

-(void)applicationDidFinishLaunching:(UIApplication *)application {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self setup];

    self.window.rootViewController = [WNCurrentWeatherViewController new];
    
    
    
}


//初始化操作
-(void)setup {
    [self setUpNetWorking];
    [self setupUMengAnalytics];
}
//设置网络状况监控
-(void)setUpNetWorking {
    [WNNetWorkManager setNetReachbilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"%@",AFStringFromNetworkReachabilityStatus(status));
    }];
}
#ifndef UmengAppKey
#define UmengAppKey @"557e449d67e58ed9fa003129"
#endif
//设置Umeng统计
-(void)setupUMengAnalytics{
    [MobClick startWithAppkey:UmengAppKey];
    [MobClick setAppVersion:[[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"]];
    [MobClick checkUpdate];
    //统计页面信息
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        NSString * className = NSStringFromClass( [[info instance]class]);
        [MobClick beginLogPageView:className];
    } error:nil];
    [UIViewController aspect_hookSelector:@selector(viewWillDisappear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        NSString * className = NSStringFromClass( [[info instance]class]);
        [MobClick endLogPageView:className];
    } error:nil];
}
@end
