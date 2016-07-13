//
//  AppDelegate.m
//  LKNSLog
//
//  Created by 张恒瑜 on 16/7/12.
//  Copyright © 2016年 张恒瑜. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//在AppDelegate.m文件中添加这个函数，并在didFinishLaunchingWithOptions方法中调用
- (void)redirectNSLogToDocumentFolder{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);//获取文件路径
    NSString *documentsDirectory = [paths objectAtIndex:0]; //路径转换成字符串
    NSLog(@"日志存放路径：%@",documentsDirectory);
    NSString *fileName =[NSString stringWithFormat:@"%@.log",[NSDate date]];//生成log文件名
    NSLog(@"日志文件名：%@",fileName);
    NSString* logFilePath = [documentsDirectory stringByAppendingPathComponent:fileName];//拼接成路径
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding],"a+",stderr);//设置nslog的输出路径为文件而不是控制台
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self redirectNSLogToDocumentFolder];//在程序载入的时候设置log输出
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
//    NSData* data = [NSData dataWithContentsOfFile:logFilePath];
}

@end
