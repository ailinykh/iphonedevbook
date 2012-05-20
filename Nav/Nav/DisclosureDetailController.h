//
//  DisclosureDetailController.h
//  Nav
//
//  Created by Антон on 08.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisclosureDetailController : UIViewController {
    UILabel *label;
    NSString *message;
}
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, copy) NSString *message;

@end
