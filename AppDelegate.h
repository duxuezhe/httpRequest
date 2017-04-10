//
//  AppDelegate.h
//  网络请求
//
//  Created by duxuezhe on 16-8-24.
//  Copyright (c) 2016年 duxuezhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,NSURLConnectionDelegate,NSURLConnectionDataDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) NSMutableData *reviceData;
@end
