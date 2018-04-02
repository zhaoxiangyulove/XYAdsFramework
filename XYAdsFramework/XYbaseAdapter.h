//
//  XYbaseAdapter.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/19.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYVendor.h"



@interface XYbaseAdapter : NSObject
//supported
@property (nonatomic, assign) BOOL supported;

//实现由子类完成
+ (instancetype)initializeSdkWithAdVendor:(XYVendor *)vendor;

@end
