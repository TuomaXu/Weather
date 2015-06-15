//
//  NSValueTransformer+WNPredefinedTransformerAdditions.m
//  Weather
//
//  Created by WuNan on 15/6/15.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//
#import <Mantle/Mantle.h>
#import <CoreLocation/CoreLocation.h>
#import "NSValueTransformer+WNTransformerAdditions.h"
NSString * const WNDateValueTransformerName = @"WNDateValueTransformerName";
NSString * const WNCLLocationCoordinate2DValueTransformerName = @"WNCLLocationCoordinate2DValueTransformerName";
@implementation NSValueTransformer (WNTransformerAdditions)
+(void)load {
    [super load];
    NSValueTransformer * coorValueTransformer = [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        CLLocationCoordinate2D coor = CLLocationCoordinate2DMake([value[@"lat"]floatValue],[value[@"lon"]floatValue]);
        return [NSValue valueWithBytes:&coor objCType:@encode(CLLocationCoordinate2D)];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        CLLocationCoordinate2D coor;
        [value getValue:&coor];
        return @{@"lat":@(coor.latitude),@"lon":@(coor.longitude)};
    }];
    [NSValueTransformer setValueTransformer:coorValueTransformer forName:WNCLLocationCoordinate2DValueTransformerName];
    NSValueTransformer * dateValueTransformer = [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [NSDate dateWithTimeIntervalSince1970:[value floatValue]];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [NSString stringWithFormat:@"%f",[value timeIntervalSince1970]];
    }];
    [NSValueTransformer setValueTransformer:dateValueTransformer forName:WNDateValueTransformerName];

}

@end
