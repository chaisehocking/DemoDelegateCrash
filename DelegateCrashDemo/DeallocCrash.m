//
//  DeallocCrash.m
//  DelegateCrashDemo
//
//  Created by Chaise Hocking on 21/03/2016.
//  Copyright © 2016 Shine. All rights reserved.
//

#import "DeallocCrash.h"


@implementation DeallocCrash

-(void)dealloc{
    NSLog(@"Not Nilling out delegate");
}

-(void)crash{
    Callback *callback = [[Callback alloc] init];
    callback.delegate = self;
    [callback startDelayedTask];
}

-(void)delayedTaskFinished:(Callback *)callback{
}

@end
