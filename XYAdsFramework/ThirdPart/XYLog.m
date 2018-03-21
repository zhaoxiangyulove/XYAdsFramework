//
//  XYLog.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/17.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYLog.h"

@implementation XYLog
+ (void)logError:(NSString *)error object:(id)object{
    NSLog(@"############ERROR############\n%@ errorInfo:%@",object,error);
}
@end
