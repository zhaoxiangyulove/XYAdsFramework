//
//  XYAdsBaseManager.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/15.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYBaseAdView.h"
#import "XYAd.h"


@protocol XYAdsBaseManagerDelegate <NSObject>

@end

typedef void(^XYManagerCompleteBlock)(BOOL succeed, NSError *error, NSArray *ads);
typedef void(^XYManagerDownloadBlock)(XYAd *ad);

@interface XYAdsBaseManager : NSObject

//delegate
//@property (nonatomic, weak) id<XYAdsBaseManagerDelegate> delegate;



+ (instancetype)shareInstance;
- (void)setPlacement:(NSString *)placement;
- (void)downloadAd:(XYBaseAdView *)baseView
             count:(int)count
  downloadingBlock:(XYManagerDownloadBlock)downloadBlock
     completeBlock:(XYManagerCompleteBlock)completeBlock;
@end
