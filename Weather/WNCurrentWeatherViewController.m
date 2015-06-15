//
//  ViewController.m
//  Weather
//
//  Created by WuNan on 15/6/13.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "WNCurrentWeatherViewController.h"
#import "WNCurrentWeatherManager.h"
#import "WNModels.h"

@interface WNCurrentWeatherViewController ()
@end

@implementation WNCurrentWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [[WNCurrentWeatherManager new]getCurrentWeatherByCurrentLocationSuccess:^(id responseObject) {
        
        NSLog(@"%@",responseObject);
        NSError * err;
        WNCurrentWeather * weather =[WNCurrentWeather modelFromDictionary:responseObject error:&err];
        NSLog(@"%@",weather);

        id dic = [weather dictionaryValue];
        
    }];
}
@end
