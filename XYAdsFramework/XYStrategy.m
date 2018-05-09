//
//  XYStrategy.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYStrategy.h"
#import "XYGCDTool.h"

@interface XYStrategy()

//callback
@property (nonatomic, strong) XYStrategyCallbackBlock callback;

@end

@implementation XYStrategy

+ (instancetype)strategyWithCompleteBlock:(XYStrategyCallbackBlock)callback{
    return [[self alloc] initWithCompleteBlock:callback];
}
- (instancetype)initWithCompleteBlock:(XYStrategyCallbackBlock)callback
{
    self = [super init];
    if (self) {
        _callback = callback;
        _status = XYLoadStrategyStatusRunning;
        //读取配置信息，加载策略
        [self readLocalFile];
        
    }
    return self;
}
//读取配置信息，加载策略
- (void)readLocalFile{
    __block BOOL readResult = NO;
    __block NSDictionary *resultDic = [NSDictionary dictionary];
    [XYGCDTool xy_async:^{
        //加载

    } complete:^{
        //回调
        if (_callback) {
            _callback(readResult,resultDic);
        }
    }];
    
}

@end
