//
//  ViewController.m
//  LKNSLog
//
//  Created by 张恒瑜 on 16/7/12.
//  Copyright © 2016年 张恒瑜. All rights reserved.
//

//#  define NSLog(fmt, ...) do {\
//NSString* file = [[NSString alloc] initWithFormat:@"%s", __FILE__];\
//NSLog((@"%@(%d) " fmt), [file lastPathComponent], __LINE__, ##__VA_ARGS__);\
//} while(0)


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"TEST");
    NSLog(@"任意位置的nslog");
//    [self redirectNSLogToDocumentFolder];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
