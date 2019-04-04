//
//  SQSignsl.h
//  001---RAC初探
//
//  Created by 宋千 on 2019/3/23.
//  Copyright © 2019 Cooci. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQSubscriber.h"

NS_ASSUME_NONNULL_BEGIN

@interface SQSignsl : NSObject

+ (SQSignsl *)createSignal:(void (^) (SQSubscriber *subscriber) )block;

- (void)subscribeNext:(void (^)(int a))block;


@end

NS_ASSUME_NONNULL_END
