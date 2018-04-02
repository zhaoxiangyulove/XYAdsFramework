//
//  XYAdsBaseManager.h
//  XYAdsFramework
//
//  Created by zhaoxiangyu on 2018/3/15.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol XYAdsBaseManagerDelegate <NSObject>

@end

@interface XYAdsBaseManager : NSObject

//delegate
//@property (nonatomic, weak) id<XYAdsBaseManagerDelegate> delegate;



+ (instancetype)shareInstance;
- (void)setPlacement:(NSString *)placement delegate:(id<XYAdsBaseManagerDelegate>)delegate;
@end
