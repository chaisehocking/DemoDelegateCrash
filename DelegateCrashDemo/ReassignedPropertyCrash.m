//
//  ReassignedPropertyCrash.m
//  DelegateCrashDemo
//
//  Created by Chaise Hocking on 18/03/2016.
//  Copyright © 2016 Shine. All rights reserved.
//

#import "ReassignedPropertyCrash.h"
#import "Callback.h"

@interface ReassignedPropertyCrash ()<CallbackProtocol>
@property(nonatomic, strong)Callback *callback;
@end

@implementation ReassignedPropertyCrash

-(void)dealloc{
    NSLog(@"ReassignedPropertyCrash dealloc");
}

-(void)crash{
    self.callback = [[Callback alloc] init];
    self.callback.delegate = self;
    [self.callback startDelayedTask];
    self.callback = [[Callback alloc] init];
}


#pragma mark - CallbackProtocol
-(void)delayedTaskFinished:(Callback *)callback{
    if (callback != self.callback) {
        NSLog(@"Error: callback from old property: %@", callback);
    }
}
@end
