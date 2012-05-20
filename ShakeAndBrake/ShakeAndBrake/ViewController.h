//
//  ViewController.h
//  ShakeAndBrake
//
//  Created by Антон on 16.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>
#import <AudioToolbox/AudioToolbox.h>

#define kAccelerationTreshold 1.7
#define kUpdateInterval (1.0f/10.0f)

@interface ViewController : UIViewController <UIAccelerometerDelegate> {
    UIImageView *imageView;
    
    CMMotionManager *motionManager;
    BOOL brokenScreenShowing;
    SystemSoundID soundID;
    UIImage *fixed;
    UIImage *broken;
}

@property (nonatomic, retain) CMMotionManager *motionManager;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) UIImage *fixed;
@property (nonatomic, retain) UIImage *broken;

@end
