//
//  Constants.h
//  QuartzFun
//
//  Created by Антон on 15.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef QuartzFun_Constants_h
#define QuartzFun_Constants_h

typedef enum {
    kLineShape = 0,
    kRectShape,
    kEllipseShape,
    kImageShape
} ShapeType;

typedef enum {
    kRedColorTab = 0,
    kBlueColorTab,
    kYelloeColorTab,
    kGreenColorTab,
    kRandomColorTab
} ColorTabIndex;

#define degreesToRadian(x) (M_PI * (x) / 180.0)

#endif
