//
//  ViewController.m
//  DelegateCrashDemo
//
//  Created by Chaise Hocking on 18/03/2016.
//  Copyright © 2016 Shine. All rights reserved.
//

#import "ViewController.h"
#import "ReassignedPropertyCrash.h"
#import "DeallocCrash.h"

@interface ViewController ()
@property(nonatomic, strong)ReassignedPropertyCrash *crash;
@end

@implementation ViewController

-(IBAction)reassignedPropertyButtonPressed{
    self.crash = [[ReassignedPropertyCrash alloc] init];
    [self.crash crash];
}

-(IBAction)deallocButtonPressed{
    DeallocCrash *deallocCrash = [[DeallocCrash alloc] init];
    [deallocCrash crash];
}


@end
