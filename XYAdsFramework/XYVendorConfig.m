//
//  XYVendorConfig.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/16.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYVendorConfig.h"
#import "XYLog.h"

const static int cpmDefault = 0;
const static int prepareLoadCountDefault = 1;
const static int loadCountDefault = 1;
const static float priceDefault = 1.0;

@interface XYVendorConfig()
@property (nonatomic, strong) NSString *placement;
@property(nonatomic, assign) int prepareLoadCount;
@property(nonatomic, assign) int loadCount;

@end

@implementation XYVendorConfig
+ (instancetype)configWithDic:(NSDictionary *)dic{
    XYVendorConfig *vendorConfig = [[self alloc] init];
    if ([vendorConfig setData:dic]) {
        [XYLog logError:@"vendorConfig Creat Error" object:[NSString stringWithUTF8String:__func__]];
        return nil;
    }
    return vendorConfig;
}

- (BOOL)setData:(NSDictionary *)config{
    return YES;
}


- (void)setCpm:(float)cpm {
    if (cpm < cpmDefault) {
        _cpm = cpmDefault;
    } else {
        _cpm = cpm;
    }
}

- (void)setCountPerLoad:(int)perpareLoadCount {
    if (perpareLoadCount < prepareLoadCountDefault) {
        _prepareLoadCount = prepareLoadCountDefault;
    } else {
        _prepareLoadCount = perpareLoadCount;
    }
}
- (void)setLoadCount:(int)loadCount{
    if (loadCount<loadCountDefault) {
        _loadCount = loadCountDefault;
    } else {
        _loadCount = loadCount;
    }
}

@end
