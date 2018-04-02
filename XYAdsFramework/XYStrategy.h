//
//  XYStrategy.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum : NSUInteger {
    XYLoadStrategyStatusRunning,
    XYLoadStrategyStatusSucceed,
    XYLoadStrategyStatusFailed,
} XYLoadStrategyStatus;

typedef void(^XYStrategyCallbackBlock)(BOOL result, NSDictionary *resultsDictionary);

@interface XYStrategy : NSObject
//strategyStatus
@property (nonatomic, assign, readonly) XYLoadStrategyStatus status;
//resultDictionary
@property (nonatomic, strong) NSDictionary *resultDictionary;


+ (instancetype)strategyWithCompleteBlock:(XYStrategyCallbackBlock)callback;

@end
