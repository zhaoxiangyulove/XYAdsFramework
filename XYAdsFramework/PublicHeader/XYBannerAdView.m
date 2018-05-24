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
    __weak typeof(self)weakSelf = self;
    [self.baseManager downloadAd:self count:count downloadingBlock:^(XYAd *ad) {
        if (weakSelf.delegate) {
            if ([weakSelf.delegate respondsToSelector:@selector(XYAdView:receiveAd:)]) {
                [weakSelf.delegate XYAdView:weakSelf receiveAd:ad];
            }
        }
    } completeBlock:^(BOOL succeed, NSError *error, NSArray *ads) {
        if (weakSelf.delegate) {
            if ([weakSelf.delegate respondsToSelector:@selector(XYAdView:finishLoadAd:Error:)] ) {
                [weakSelf.delegate XYAdView:weakSelf finishLoadAd:ads Error:error];
            }
        }
    }];
}

@end
