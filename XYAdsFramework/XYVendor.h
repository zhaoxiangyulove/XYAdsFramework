//
//  XYVendor.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/16.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYVendorConfig.h"

@class XYAd;

@interface XYVendor : NSObject
//name
@property (nonatomic, strong, readonly) NSString *name;
//adapterClassName
@property (nonatomic, strong, readonly) NSString *adapterClassName;
//vendorConfig
@property (nonatomic, strong, readonly) XYVendorConfig *vendorConfig;
//ads
@property (nonatomic, strong) NSMutableArray<XYAd *> *ads;
//APPKey
@property (nonatomic, strong, readonly) NSString *key;


+ (instancetype)venderWithStringType:(NSString *)type;

@end
