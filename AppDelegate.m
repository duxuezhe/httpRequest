//
//  AppDelegate.m
//  网络请求
//
//  Created by duxuezhe on 16-8-24.
//  Copyright (c) 2016年 duxuezhe. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //表示访问的服务器
    NSURL *url = [NSURL URLWithString:@"http://www.open-open.com/lib/view/open1390612571836.html"];
    
    //表示客户端发起的网络请求的请求内容
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    
    //启动网络请求
    [connection start];
    
    return YES;
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //NSLog(@"%@",response);
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.reviceData appendData:data];  
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString * str = [[NSString alloc]initWithData:self.reviceData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",str);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
