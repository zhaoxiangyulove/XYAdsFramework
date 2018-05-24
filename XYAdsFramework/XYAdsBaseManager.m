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
#import "XYbaseAdapter.h"
#import "XYDelegate.h"
#import "XYGCDTool.h"


@interface XYAdsBaseManager()
//vendors
@property (nonatomic, strong) NSArray<XYVendor *> *vendors;
//strategy
@property (nonatomic, strong) XYStrategy *strategy;
//delegates
@property (nonatomic, strong) NSMutableDictionary <NSString *, NSMutableArray *> *delegates;
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
        __weak typeof(self)weakSelf = self;
        _strategy = [XYStrategy strategyWithCompleteBlock:^(BOOL succeed, NSDictionary *resultsDictionary) {
            if (succeed == YES) {
                //set vendors
                NSMutableArray *vendors = [NSMutableArray array];
                
                
                _vendors = [vendors copy];
                //creat adapters
                [weakSelf creatAdapters];
            }
        }];
        XYVendor *vendor = [XYVendor venderWithStringType:@"XYAmazonAdapter"];
        XYbaseAdapter *adapter = [XYbaseAdapter initializeSdkWithAdVendor:vendor];
    }
    return self;
}
- (void)creatAdapters{
    dispatch_apply(_vendors.count, dispatch_get_global_queue(0, 0), ^(size_t size_t) {
        XYVendor *vendor = _vendors[size_t];
        XYbaseAdapter *adapter = [XYbaseAdapter initializeSdkWithAdVendor:vendor];
    });
}
- (void)setPlacement:(NSString *)placement{
    NSMutableArray *delegates = self.delegates[placement];
    if (delegates == nil) {
        delegates = [[NSMutableArray alloc] init];
    }
    self.delegates[placement] = delegates;
}
- (void)downloadAd:(XYBaseAdView *)baseView
             count:(int)count
  downloadingBlock:(XYManagerDownloadBlock)downloadBlock
     completeBlock:(XYManagerCompleteBlock)completeBlock{
    
}
#pragma mark lazy loading methods
- (NSMutableDictionary<NSString *, NSMutableArray *> *)delegates{
    if (_delegates == nil) {
        _delegates = [[NSMutableDictionary alloc] init];
    }
    return _delegates;
}

@end
