//
//  RowControlsController.h
//  Nav
//
//  Created by Антон on 08.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"

@interface RowControlsController : SecondLevelViewController
@property (nonatomic, retain) NSArray *list;
- (IBAction)buttonTapped:(id)sender;

@end
