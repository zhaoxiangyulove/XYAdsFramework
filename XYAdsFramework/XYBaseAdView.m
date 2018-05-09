//
//  XYBaseAdView.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/4/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYBaseAdView.h"
#import "XYAdsBaseManager.h"

@interface XYBaseAdView()<XYAdsBaseManagerDelegate>

@end

@implementation XYBaseAdView
- (instancetype)initWithPlacement:(NSString *)placement
{
    self = [super init];
    if (self) {
        _placement = placement;
        [[XYAdsBaseManager shareInstance] setPlacement:placement delegate:self];
    }
    return self;
}
- (void)preloadAdWithCount:(NSInteger)count{
    
}
- (void)showAd{
    
}
- (void)autoShowAdWithTimeInterval:(NSTimeInterval)interVal{
    
}
@end
