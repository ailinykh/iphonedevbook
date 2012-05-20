//
//  CheckMarkRecognizer.h
//  CheckPlease
//
//  Created by Антон on 16.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CheckMarkRecognizer : UIGestureRecognizer {
    CGPoint lastPrevousPoint;
    CGPoint lastCurrentPoint;
    CGFloat lineLengthSoFar;
}

@end
