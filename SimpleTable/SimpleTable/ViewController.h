//
//  ViewController.h
//  SimpleTable
//
//  Created by Антон on 02.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray *listData;
}

@property (nonatomic, retain) NSArray *listData;

@end
