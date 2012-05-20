//
//  ViewController.h
//  SlowWorker
//
//  Created by Антон on 14.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, retain) IBOutlet UIButton *startButton;
@property (nonatomic, retain) IBOutlet UITextView *resultsTextView;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *spinner;
- (IBAction)doWork:(id)sender;
@end
