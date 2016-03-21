//
//  Callback.h
//  DelegateCrashDemo
//
//  Created by Chaise Hocking on 18/03/2016.
//  Copyright © 2016 Shine. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Callback;

@protocol CallbackProtocol <NSObject>
-(void)delayedTaskFinished:(Callback *)callback;
@end

@interface Callback : NSObject
@property(nonatomic, weak)id<CallbackProtocol> delegate;
-(void)startDelayedTask;
@end
