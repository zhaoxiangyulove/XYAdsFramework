//
//  XYVendor.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/16.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYVendor.h"
#import "XYLog.h"

@interface XYVendor()

//name
@property (nonatomic, strong) NSString *name;
//ids
@property (nonatomic, strong) NSArray *ids;

@end

@implementation XYVendor
+ (instancetype)venderWithStringType:(NSString *)type{
    if (type.length <= 0) {
        [XYLog logError:@"vender type is nil" object:[NSString stringWithUTF8String:__func__]];
    }
    XYVendor *vender = [[self alloc] initWithStringType:type];
    return vender;
}
- (instancetype)initWithStringType:(NSString *)type
{
    self = [super init];
    if (self) {
        _name = type;
        _adapterClassName = type;
    }
    return self;
}

@end
