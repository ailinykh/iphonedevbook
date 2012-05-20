//
//  ViewController.h
//  Cells
//
//  Created by Антон on 03.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define kNameValueTag  1
#define kColorValueTag 2

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSArray *computers;
    UITableViewCell *tvCell;
}

@property (nonatomic, retain) NSArray *computers;
@property (nonatomic, retain) IBOutlet UITableViewCell *tvCell;

@end
