//
//  XYbaseAdapter.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/19.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYbaseAdapter.h"
#import "XYLog.h"

@interface XYbaseAdapter()



@end

@implementation XYbaseAdapter

+ (instancetype)initializeSdkWithAdVendor:(XYVendor *)vendor{
    if (!vendor) return nil;
    NSString *className = vendor.adapterClassName;
    if (NSClassFromString(className)) {
        XYbaseAdapter *adapter = [NSClassFromString(className) initializeSdkWithAdVendor:vendor];
        if (adapter && adapter.supported) {
            return adapter;
        }else{
            if (!adapter) {
                [XYLog logError:[NSString stringWithFormat:@"%@ don't exist",className] object:self];
            }else{
                [XYLog logError:[NSString stringWithFormat:@"%@ don‘t match systemVersion",className] object:self];
            }
            return nil;
        }
    }else{
        return nil;
    }
}

@end
