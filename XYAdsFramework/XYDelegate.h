//
//  XYDelegate.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/30.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYDelegate : NSObject
//key
@property (nonatomic, strong) NSString *key;
//value
@property (nonatomic, weak) id delegate;


@end
