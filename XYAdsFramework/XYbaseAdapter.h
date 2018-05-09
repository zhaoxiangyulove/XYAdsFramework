//
//  XYbaseAdapter.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/19.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYVendor.h"

typedef NS_ENUM(NSInteger,XYAdType) {
    XYAdType_Native,
    XYAdType_Banner,
    XYAdType_Initerstitial,
    XYAdType_Reward,
};

@interface XYbaseAdapter : NSObject
//supported
@property (nonatomic, assign) BOOL supported;
//adType
@property (nonatomic, assign) XYAdType type;

//实现由子类完成
+ (instancetype)initializeSdkWithAdVendor:(XYVendor *)vendor;

@end
