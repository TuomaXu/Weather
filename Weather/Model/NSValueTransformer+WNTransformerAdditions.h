//
//  NSValueTransformer+WNPredefinedTransformerAdditions.h
//  Weather
//
//  Created by WuNan on 15/6/15.
//  Copyright (c) 2015年 WuNan. All rights reserved.
//

#import <Foundation/Foundation.h>
NSString * const WNDateValueTransformerName;
NSString * const WNCLLocationCoordinate2DValueTransformerName;
@interface NSValueTransformer (WNTransformerAdditions)

+(NSValueTransformer*)dateValueTransformer;
+(NSValueTransformer*)coordinateValueTransformer;
@end
