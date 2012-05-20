//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by Антон on 28.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent 0
#define kBreadComponent 1

@interface DoubleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    UIPickerView *doublePicker;
    NSArray *fillingTypes;
    NSArray *breadTypes;
}

@property(nonatomic, retain) IBOutlet UIPickerView *doublePicker;
@property(nonatomic, retain) NSArray *fillingTypes;
@property(nonatomic, retain) NSArray *breadTypes;
- (IBAction)buttonPressed;

@end
