//
//  XYAmazonAdapter.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYAmazonAdapter.h"
@interface XYAmazonAdapter()
//vendor
@property (nonatomic, strong) XYVendor *vendor;
@end

@implementation XYAmazonAdapter

+ (instancetype)initializeSdkWithAdVendor:(XYVendor *)vendor{
    return [[self alloc] initWithWithAdVendor:vendor];
}
- (instancetype)initWithWithAdVendor:(XYVendor *)vendor{
    self = [super init];
    if (self) {
        self.vendor = vendor;
        self.supported = YES;
    }
    return self;
}
@end
