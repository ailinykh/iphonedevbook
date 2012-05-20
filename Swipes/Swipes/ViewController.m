//
//  ViewController.m
//  Swipes
//
//  Created by Антон on 15.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#define  kMinimumGestureLength 125
#define  kMaximumVariance 5

@implementation ViewController
@synthesize label;
@synthesize gestureStartPoint;

- (void)eraseText {
    label.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    UISwipeGestureRecognizer *vertical = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportVerticalSwipe:)];
//    vertical.direction = UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
//    [self.view addGestureRecognizer:vertical];
//    
//    UISwipeGestureRecognizer *horizontal = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportHorizontalSwipe:)];
//    horizontal.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
//    [self.view addGestureRecognizer:horizontal];
    UISwipeGestureRecognizer *vertical;
    
    for (NSUInteger touchCount = 1; touchCount <= 5; touchCount++) {
        vertical = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportVerticalSwipe:)];
        vertical.direction = UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
        vertical.numberOfTouchesRequired = touchCount;
        [self.view addGestureRecognizer:vertical];
        
        UISwipeGestureRecognizer *horizontal = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportHorizontalSwipe:)];
        horizontal.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
        horizontal.numberOfTouchesRequired = touchCount;
        [self.view addGestureRecognizer:horizontal];
    }
}

- (NSString *)descriptionForTouchCount:(NSUInteger)touchCount {
    if (touchCount == 2)
        return @"Double";
    else if (touchCount == 3)
        return @"Triple";
    else if (touchCount == 4)
        return @"Quadruple";
    else if (touchCount == 5)
        return @"Quintuple";
    else
        return @"";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.label = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
//    gestureStartPoint = [touch locationInView:self.view];
//}
//
//- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
//    CGPoint currentPosition = [touch locationInView:self.view];
//    
//    CGFloat deltaX = fabsf(gestureStartPoint.x - currentPosition.x);
//    CGFloat deltaY = fabsf(gestureStartPoint.y - currentPosition.y);
//    if (deltaX >= kMinimumGestureLength && deltaY <= kMaximumVariance ) {
//        label.text = @"Horizontal swipe detected";
//        [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
//    } else if (deltaY >= kMinimumGestureLength && deltaX <= kMaximumVariance) {
//        label.text = @"Vertical swipe detected";
//        [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
//    }
//}

- (void)reportHorizontalSwipe:(UIGestureRecognizer *)recognizer {
//    label.text = @"Horizontal swipe detected";
    label.text = [NSString stringWithFormat:@"%@ Horizontal swipe detected", [self descriptionForTouchCount:[recognizer numberOfTouches]]];
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

- (void)reportVerticalSwipe:(UIGestureRecognizer *)recognizer {
//    label.text = @"Vertical swipe detected";
    label.text = [NSString stringWithFormat:@"%@ Vertical swipe detected", [self descriptionForTouchCount:[recognizer numberOfTouches]]];
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

@end
