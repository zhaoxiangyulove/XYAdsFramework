//
//  XYAd.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/15.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYAd : NSObject
//基类工厂方法，创建广告实例
+ (instancetype)adWithConfig:(NSDictionary *)config;

@end
