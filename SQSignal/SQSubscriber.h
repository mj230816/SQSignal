//
//  SQSubscriber.h
//  001---RAC初探
//
//  Created by 宋千 on 2019/3/23.
//  Copyright © 2019 Cooci. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SQSubscriber : NSObject

@property (nonatomic, copy) void (^innerBlock)(int a);

- (void)sendNext:(int)next;

@end

