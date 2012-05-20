//
//  DisclosureButtonController.h
//  Nav
//
//  Created by Антон on 08.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"
@class DisclosureDetailController;

@interface DisclosureButtonController : SecondLevelViewController {
    NSArray *list;
    DisclosureDetailController *childController;
}
@property (nonatomic, retain) NSArray *list;

@end
