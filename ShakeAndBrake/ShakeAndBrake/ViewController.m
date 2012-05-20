//
//  ViewController.m
//  ShakeAndBrake
//
//  Created by Антон on 16.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize motionManager;
@synthesize imageView;
@synthesize fixed;
@synthesize broken;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"glass" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:path], &soundID);
    self.fixed = [UIImage imageNamed:@"home.png"];
    self.broken = [UIImage imageNamed:@"homebroken.png"];
    
    imageView.image = fixed;
    
//    self.motionManager = [[CMMotionManager alloc] init];
//    motionManager.accelerometerUpdateInterval = kUpdateInterval;
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//    [motionManager startAccelerometerUpdatesToQueue:queue withHandler:^(CMAccelerometerData *accelerometerData,NSError *error){
//        if (error) {
//            [motionManager stopAccelerometerUpdates];
//        } else {
//            if (!brokenScreenShowing) {
//                CMAcceleration acceleration = accelerometerData.acceleration;
//                if (acceleration.x > kAccelerationTreshold || acceleration.y > kAccelerationTreshold || acceleration.z > kAccelerationTreshold) {
//                    [imageView performSelectorOnMainThread:@selector(setImage:) withObject:broken waitUntilDone:NO];
//                    AudioServicesPlaySystemSound(soundID);
//                    brokenScreenShowing = YES;
//                }
//            }
//        }
//    }];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.imageView = nil;
    self.motionManager = nil;
    self.fixed = nil;
    self.broken = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    NSLog(@"%@", [self.imageView isFirstResponder] ? @"YES" : @"NO");
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    imageView.image = fixed;
    brokenScreenShowing = NO;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"%d", motion);
    if (motion == UIEventSubtypeMotionShake) {
        [imageView setImage:broken];
        AudioServicesPlaySystemSound(soundID);
        brokenScreenShowing = YES;
    }
}

@end
