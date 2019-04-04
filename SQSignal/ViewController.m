//
//  ViewController.m
//  SQSignal
//
//  Created by 宋千 on 2019/3/23.
//  Copyright © 2019 HuangLi. All rights reserved.
//

#import "ViewController.h"
#import "SQSignsl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SQSignsl *s = [SQSignsl createSignal:^(SQSubscriber * _Nonnull subscriber) {
        [subscriber sendNext:1];
    }];
    
    [s subscribeNext:^(int a) {
        NSLog(@"%d", a);
    }];
    
    /**
     创建一个任务，这个任务缺少 执行者， 但是有完成状态。
     
     订阅这个任务，创建一个执行者，这个执行者知道，这个任务的后续操作。
     
     */
}


@end
