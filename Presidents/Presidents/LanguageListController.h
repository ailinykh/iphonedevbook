//
//  LanguageListController.h
//  Presidents
//
//  Created by Антон on 10.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailViewController;

@interface LanguageListController : UITableViewController
@property (nonatomic, assign) DetailViewController *detailViewController;
@property (nonatomic, retain) NSArray *languageNames;
@property (nonatomic, retain) NSArray *languageCodes;
@end
