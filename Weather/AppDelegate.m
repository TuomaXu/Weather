//
//  AppDelegate.m
//  Weather
//
//  Created by WuNan on 15/6/10.
//  Copyright (c) 2015年 信通惠德. All rights reserved.
//

#import "AppDelegate.h"
#import "CurrentWeatherViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface AppDelegate ()<CLLocationManagerDelegate>

@end

@implementation AppDelegate

-(void)applicationDidFinishLaunching:(UIApplication *)application {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

//    self.window.rootViewController = [CurrentWeatherViewController new];
    
    CLLocationManager * manager = [[CLLocationManager alloc]init];
    manager.delegate = self;
    [manager requestWhenInUseAuthorization];
    [manager startUpdatingLocation];
       NSLog(@"%@", NSLocalizedString(@"Test", nil));
}
-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    
}
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
}
@end
