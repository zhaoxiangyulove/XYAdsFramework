//
//  XYVendorConfig.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/16.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYVendorConfig : NSObject
//cpm
@property (nonatomic, assign, readonly) float cpm;

+ (instancetype)configWithDic:(NSDictionary *)dic;

@end
