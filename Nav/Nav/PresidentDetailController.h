//
//  PresidentDetailController.h
//  Nav
//
//  Created by Антон on 08.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class President;
#define kNumberOfEditableRows   4
#define kNameRowIndex           0
#define kFromyearRowIndex       1
#define kToYearFromIndex        2
#define kPartyIndex             3

#define kLabelTag               4096

@interface PresidentDetailController : UITableViewController <UITextFieldDelegate>
@property (nonatomic, retain) President *president;
@property (nonatomic, retain) NSArray *fieldLabels;
@property (nonatomic, retain) NSMutableDictionary *tempValues;
@property (nonatomic, retain) UITextField *textFieldBeingEdited;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)textFieldDone:(id)sender;
@end
