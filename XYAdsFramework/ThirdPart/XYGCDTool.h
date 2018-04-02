//
//  XYGCDTool.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/21.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYGCDTool : NSObject
+ (void)xy_async:(void(^)())block complete:(void(^)())complete;

@end
