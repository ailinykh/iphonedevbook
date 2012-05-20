//
//  ViewController.h
//  SwitchView
//
//  Created by Антон on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YellowViewController;
@class BlueViewController;

@interface ViewController : UIViewController {
    YellowViewController *yellowViewController;
    BlueViewController *blueViewController;
}

@property (retain, nonatomic) YellowViewController *yellowViewController;
@property (retain, nonatomic) BlueViewController *blueViewController;

- (IBAction)switchViews:(id)sender;

@end
