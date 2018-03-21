//
//  XYAd.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/15.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYAd.h"

@interface XYAd()
//config
@property (nonatomic, copy) NSDictionary *config;

@end



@implementation XYAd
+ (instancetype)adWithConfig:(NSDictionary *)config{
    XYAd *ad = [[self alloc] initWithConfig:config];
    return ad;
}

- (instancetype)initWithConfig:(NSDictionary *)config
{
    self = [super init];
    if (self) {
        _config = [config copy];
    }
    return self;
}
@end
