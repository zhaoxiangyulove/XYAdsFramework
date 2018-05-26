//
//  XYBannerAdView.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/27.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYBannerAdView.h"
#import "XYBaseAdView+internal.h"

@implementation XYBannerAdView

+ (instancetype)bannerViewWithPlacement:(NSString *)placement{
    return [[self alloc] initWithPlacement:(NSString *)placement];
}
- (void)loadAdWithCount:(NSInteger)count{
}

@end
