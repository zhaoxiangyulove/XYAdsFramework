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
    XYLoadStrategyStatusIdle,
} XYLoadStrategyStatus;

typedef void(^XYStrategyCallbackBlock)(BOOL result, NSDictionary *resultsDictionary);

@interface XYStrategy : NSObject
//strategyStatus
@property (nonatomic, assign, readonly) XYLoadStrategyStatus status;


+ (instancetype)strategyWithCompleteBlock:(XYStrategyCallbackBlock)callback;

@end
