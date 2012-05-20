//
//  ButtonViewController.h
//  ButtonFun
//
//  Created by Антон on 24.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonViewController : UIViewController {
    UILabel *statusText;
}

@property (nonatomic, retain) IBOutlet UILabel *statusText;
- (IBAction)buttonPressed:(id)sender;

@end
