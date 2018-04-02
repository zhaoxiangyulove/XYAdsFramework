//
//  ViewController.m
//  AdFrameworkTestSimple
//
//  Created by zhaoxiangyu on 2018/3/21.
//  Copyright © 2018年 xiangyu.zhao. All rights reserved.
//

#import "ViewController.h"
#import <XYAdsFramework/XYBannerAdView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XYBannerAdView *banner = [XYBannerAdView bannerViewWithPlacement:@"banner"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
