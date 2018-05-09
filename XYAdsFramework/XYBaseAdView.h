//
//  XYBaseAdView.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/4/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XYAd;

@interface XYBaseAdView : UIView
@property (nonatomic, strong, readonly) NSString *placement;
//ad
@property (nonatomic, strong, readonly) XYAd *currentAd;

- (instancetype)initWithPlacement:(NSString *)placement;
- (void)preloadAdWithCount:(NSInteger)count;
- (void)showAd;
- (void)autoShowAdWithTimeInterval:(NSTimeInterval)interVal;
@end
