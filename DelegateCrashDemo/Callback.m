//
//  Callback.m
//  DelegateCrashDemo
//
//  Created by Chaise Hocking on 18/03/2016.
//  Copyright © 2016 Shine. All rights reserved.
//

#import "Callback.h"

@implementation Callback

-(void)dealloc{
    NSLog(@"Callback dealloc delegate: %@", self.delegate);
}

-(void)startDelayedTask{
    [self performSelector:@selector(finishedDelayedTask) withObject:nil afterDelay:0.1];
}

-(void)finishedDelayedTask{
    [self.delegate delayedTaskFinished:self];
}

@end
