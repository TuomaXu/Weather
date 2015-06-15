//
//  WNLocationManager.h
//  Weather
//
//  Created by WuNan on 15/6/14.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void(^GetLocationSuccess)(CLLocationManager* manager,CLLocation* location);
typedef void(^GetLocationFailed)(CLLocationManager* manager,NSError* err);

@interface WNLocationManager : NSObject
@property (nonatomic,strong,readonly)CLLocation * location;
+(instancetype)shareInstance;

-(void)getCurrentLocationSuccess:(GetLocationSuccess)successBlock failed:(GetLocationFailed)failedBlock;
@end
