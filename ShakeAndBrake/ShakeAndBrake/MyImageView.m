//
//  MyImageView.m
//  ShakeAndBrake
//
//  Created by Антон on 16.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyImageView.h"

@implementation MyImageView

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"%@", motion);
    if (motion == UIEventSubtypeMotionShake) {
        NSLog(@"SHAKE!");
//        [imageView setImage:broken];
//        AudioServicesPlaySystemSound(soundID);
//        brokenScreenShowing = YES;
    }
}

@end
