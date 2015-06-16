//
//  MTLModel+WNHelper.m
//  Weather
//
//  Created by WuNan on 15/6/15.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "MTLModel+WNHelper.h"
#import <MTLJSONAdapter.h>


@implementation MTLModel (WNHelper)


+(instancetype)modelFromDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error {
    return [MTLJSONAdapter modelOfClass:self fromJSONDictionary:dictionaryValue error:error];
}
+(NSArray*)modelsFromArray:(NSArray *)arrayValue error:(NSError *__autoreleasing *)error {
    return [MTLJSONAdapter modelsOfClass:self fromJSONArray:arrayValue error:error];
}
@end
