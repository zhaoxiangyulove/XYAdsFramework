//
//  XYAdsBaseManager.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/15.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//


#import "XYAdsBaseManager.h"
#import "XYVendor.h"
#import "XYStrategy.h"


@interface XYAdsBaseManager()
//vendors
@property (nonatomic, strong) NSArray<XYVendor *> *vendors;
//strategy
@property (nonatomic, strong) XYStrategy *strategy;
@end

@implementation XYAdsBaseManager
static XYAdsBaseManager *_manager = nil;
+ (instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[XYAdsBaseManager alloc] init];
    });
    return _manager;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _strategy = [XYStrategy strategyWithCompleteBlock:^(BOOL result, NSDictionary *resultsDictionary) {
            if (result == YES) {
                //set vendors
                _vendors = nil;
            }
        }];
    }
    return self;
}

@end
