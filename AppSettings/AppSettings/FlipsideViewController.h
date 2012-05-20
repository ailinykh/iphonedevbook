//
//  FlipsideViewController.h
//  AppSettings
//
//  Created by Антон on 12.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController
@property (nonatomic, retain) IBOutlet UISwitch *engineSwitch;
@property (nonatomic, retain) IBOutlet UISlider *warpFactorSlider;

@property (weak, nonatomic) IBOutlet id <FlipsideViewControllerDelegate> delegate;

- (void)refreshFields;
- (IBAction)touchEngineSwitch;
- (IBAction)TouchWarpSlider;
- (IBAction)done:(id)sender;

@end
