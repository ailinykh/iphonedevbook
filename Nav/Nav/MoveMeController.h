//
//  MoveMeController.h
//  Nav
//
//  Created by Антон on 08.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"

@interface MoveMeController : SecondLevelViewController
@property(nonatomic, strong) NSMutableArray *list;
- (IBAction)toggleMove;

@end
