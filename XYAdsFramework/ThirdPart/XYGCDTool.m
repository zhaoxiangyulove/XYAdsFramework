//
//  XYGCDTool.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/21.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYGCDTool.h"

static NSThread *_workingThread = nil;


@implementation XYGCDTool
+ (void)load{
    [super load];
    _workingThread = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
    [_workingThread start];
}
+ (void)xy_async:(void (^)())block complete:(void (^)())complete{
    void (^oneBlock)() = ^(){
        block();
        dispatch_async(dispatch_get_main_queue(), ^{
            complete();
        });
    };
    [self performSelector:@selector(handle:)onThread:_workingThread withObject:oneBlock waitUntilDone:NO];
}
+ (void)run{
    [[NSThread currentThread] setName:@"XYWorkingThread"];
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop addPort:[NSMachPort port] forMode:NSDefaultRunLoopMode];
    [runLoop run];
}
+ (void)handle:(void (^)())block{
    block();
}
@end
