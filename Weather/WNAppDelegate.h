//
//  AppDelegate.h
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AFNetworkReachabilityManager;
@interface WNAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)AFNetworkReachabilityManager * reachabilityManager;

@end

