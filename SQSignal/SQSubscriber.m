//
//  SQSubscriber.m
//  001---RAC初探
//
//  Created by 宋千 on 2019/3/23.
//  Copyright © 2019 Cooci. All rights reserved.
//

#import "SQSubscriber.h"

@implementation SQSubscriber

- (void)sendNext:(int)next {
    self.innerBlock(next);
}

@end
