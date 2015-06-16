//
//  MTLModel+WNHelper.h
//  Weather
//
//  Created by WuNan on 15/6/15.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import "MTLModel.h"

@interface MTLModel (WNHelper)


+(instancetype)modelFromDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error;
+(NSArray*)modelsFromArray:(NSArray *)arrayValue error:(NSError *__autoreleasing *)error;
@end
