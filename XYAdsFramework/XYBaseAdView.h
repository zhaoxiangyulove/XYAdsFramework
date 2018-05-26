//
//  XYBaseAdView.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/4/20.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XYAd;
@class XYBaseAdView;

@protocol XYBaseAdViewDelegate
- (void)XYAdView:(XYBaseAdView *)view receiveAd:(XYAd *)ad;
- (void)XYAdView:(XYBaseAdView *)view finishLoadAd:(NSArray <XYAd*>*)ads Error:(NSError *)error;
@end

@interface XYBaseAdView : UIView
@property (nonatomic, strong, readonly) NSString *placement;
//ad
@property (nonatomic, strong, readonly) XYAd *currentAd;

//delegate
@property (nonatomic, weak) id<XYBaseAdViewDelegate> delegate;

- (instancetype)initWithPlacement:(NSString *)placement;
//- (void)loadAdWithCount:(NSInteger)count;
- (void)showAd;
- (void)autoShowAdWithTimeInterval:(NSTimeInterval)interVal;
@end
