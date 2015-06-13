//
//  ViewController.m
//  Weather
//
//  Created by WuNan on 15/6/10.
//  Copyright (c) 2015年 信通惠德. All rights reserved.
//
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

#import "CurrentWeatherViewController.h"

@interface CurrentWeatherViewController ()<CLLocationManagerDelegate>
@property (nonatomic,strong) CLLocationManager * locationManager;
@end

@implementation CurrentWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestWhenInUseAuthorization];
    [_locationManager startUpdatingLocation];
    
}
-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
    
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
}
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    
}
@end
