//
//  ViewController.m
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNCurrentWeatherViewController.h"
#import "WNCurrentWeatherManager.h"
#import "WNForecastManager.h"
#import "WNModels.h"

@interface WNCurrentWeatherViewController ()
@end

@implementation WNCurrentWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [WNCurrentWeatherManager getCurrentWeatherByCurrentLocationSuccess:^(id responseObject) {
        WNCurrentWeather * weather =[WNCurrentWeather modelFromDictionary:responseObject error:nil];
    }];
    [WNForecastManager getForecastByCityID:@1799629 success:^(id responseObject) {
        NSArray * weathers = [WNForecast modelsFromArray:responseObject[@"list"] error:nil];
    }];
}
@end
