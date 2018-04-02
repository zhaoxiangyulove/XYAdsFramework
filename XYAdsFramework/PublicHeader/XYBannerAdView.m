//
//  XYBannerAdView.m
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/27.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "XYBannerAdView.h"
#import "XYAdsBaseManager.h"

@interface XYBannerAdView()<XYAdsBaseManagerDelegate>
@property (nonatomic, strong) NSString *placement;
@end

@implementation XYBannerAdView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (instancetype)bannerViewWithPlacement:(NSString *)placement{
    return [[self alloc] initWithPlacement:(NSString *)placement];
}
- (instancetype)initWithPlacement:(NSString *)placement
{
    self = [super init];
    if (self) {
        _placement = placement;
        [[XYAdsBaseManager shareInstance] setPlacement:placement delegate:self];
    }
    return self;
}
@end
