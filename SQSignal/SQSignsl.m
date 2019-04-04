//
//  SQSignsl.m
//  001---RAC初探
//
//  Created by 宋千 on 2019/3/23.
//  Copyright © 2019 Cooci. All rights reserved.
//

#import "SQSignsl.h"

@interface SQSignsl ()

@property (nonatomic, copy) void (^didBlock) (SQSubscriber *);

@end

@implementation SQSignsl

+ (SQSignsl *)createSignal:(void (^) (SQSubscriber *subscriber))block {
    
    SQSignsl *signal = [[SQSignsl alloc] init];
    signal->_didBlock = [block copy];
    
    return signal;
}

- (void)subscribeNext:(void (^)(int a))block {
    
    SQSubscriber *subscriber = [[SQSubscriber alloc] init];
    subscriber.innerBlock = [block copy];
    _didBlock(subscriber);
}

@end
