//
//  DragView.m
//  Festermind
//
//  Created by Bryan French on 12/15/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import "DragView.h"
#import "ViewController.h"

@implementation DragView


-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    application = [UIApplication sharedApplication];
    delegate = [application delegate];
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // No need to invoke |touchesBegan| on super
    NSLog(@"touchesBegan");
//    NSData *archivedData = [NSKeyedArchiver archivedDataWithRootObject: self];
//    DragView *imageCopy = [NSKeyedUnarchiver unarchiveObjectWithData: archivedData];
//    [[self superview] addSubview:imageCopy];
}

- (void)touchesMoved:(NSSet *)set withEvent:(UIEvent *)event {
    CGPoint p = [[set anyObject] locationInView:self.superview];
    self.center = p;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    NSData *archivedData = [NSKeyedArchiver archivedDataWithRootObject: self];
//    DragView *imageCopy = [NSKeyedUnarchiver unarchiveObjectWithData: archivedData];
//    [[self superview] addSubview:imageCopy];
    
    [self ifCollided];
}

/*
 checks if a dot was collided 
 */

-(void)ifCollided{
    
//    NSString *cheese = [[NSString alloc] init];
//    cheese = @"delegate.viewController.hole11.frame";
    
//    if(CGRectIntersectsRect(self.frame, delegate.viewController.hole11.frame))
//    {
//        delegate.viewController.hole11.frame = CGRectMake(delegate.viewController.hole11.frame.origin.x,
//                                                          delegate.viewController.hole11.frame.origin.y,
//                                                          32, 32);
//        delegate.viewController.hole11.center = delegate.viewController.hole11.superview.center;
//        delegate.viewController.hole11.image = [UIImage imageNamed: @"bluePeg.png"];
//  
//    }
//    else if(CGRectIntersectsRect(self.frame, delegate.viewController.hole12.frame))
//    {
//        delegate.viewController.hole12.frame = CGRectMake(delegate.viewController.hole12.frame.origin.x,
//                                                          delegate.viewController.hole12.frame.origin.y,
//                                                          32, 32);
//        delegate.viewController.hole12.center = delegate.viewController.hole12.superview.center;
//        delegate.viewController.hole12.image = [UIImage imageNamed: @"redPeg.png"];
//    }
//    else if(CGRectIntersectsRect(self.frame, delegate.viewController.hole13.frame))
//    {
//        delegate.viewController.hole13.frame = CGRectMake(delegate.viewController.hole13.frame.origin.x,
//                                                          delegate.viewController.hole13.frame.origin.y,
//                                                          32, 32);
//        delegate.viewController.hole13.center = delegate.viewController.hole13.superview.center;
//        delegate.viewController.hole13.image = [UIImage imageNamed: @"orangePeg.png"];
//    }
//    else if(CGRectIntersectsRect(self.frame, delegate.viewController.hole14.frame))
//    {
//        delegate.viewController.hole14.frame = CGRectMake(delegate.viewController.hole14.frame.origin.x,
//                                                          delegate.viewController.hole14.frame.origin.y,
//                                                          32, 32);
//        delegate.viewController.hole14.center = delegate.viewController.hole14.superview.center;
//        delegate.viewController.hole14.image = [UIImage imageNamed: @"greenPeg.png"];
//    }
    
}

@end
