//
//  XYStrategy.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYStrategy.h"

@interface XYStrategy()

//callback
@property (nonatomic, strong) XYStrategyCallbackBlock callback;

@end

@implementation XYStrategy

+ (instancetype)strategyWithCompleteBlock:(XYStrategyCallbackBlock)callback{
    return [[self alloc] init];
}
- (instancetype)initWithCompleteBlock:(XYStrategyCallbackBlock)callback
{
    self = [super init];
    if (self) {
        _callback = callback;
        //读取配置信息，加载策略
        
    }
    return self;
}

@end
