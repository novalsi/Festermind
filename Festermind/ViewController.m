//
//  ViewController.m
//  Festermind
//
//  Created by Student on 12/13/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize insultLabel, goButton, darkGreyPeg, brownPeg, redPeg, orangePeg, yellowPeg, greenPeg, bluePeg, lightGreyPeg, hole101, hole102, hole103, hole104, hole11, hole12, hole13, hole14, hole21, hole22, hole23, hole24, hole31, hole32, hole33, hole34, hole41, hole42, hole43, hole44, hole51, hole52, hole53, hole54, hole61, hole62, hole63, hole64, hole71, hole72, hole73, hole74, hole81, hole82, hole83, hole84, hole91, hole92, hole93, hole94, dot101, dot102, dot103, dot104, dot11, dot12, dot13, dot14, dot21, dot22, dot23, dot24, dot31, dot32, dot33, dot34, dot41, dot42, dot43, dot44, dot51, dot52, dot53, dot54, dot61, dot62, dot63, dot64, dot71, dot72, dot73, dot74, dot81, dot82, dot83, dot84, dot91, dot92, dot93, dot94;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    
    //check for which peg is touched
    
    if ([touch view] == darkGreyPeg)        {darkGreyPeg.center = location;}
    else if ([touch view] == brownPeg)      {brownPeg.center = location;}
    else if ([touch view] == redPeg)        {redPeg.center = location;}
    else if ([touch view] == orangePeg)     {orangePeg.center = location;}
    else if ([touch view] == yellowPeg)     {yellowPeg.center = location;}
    else if ([touch view] == greenPeg)      {greenPeg.center = location;}
    else if ([touch view] == bluePeg)       {bluePeg.center = location;}
    else if ([touch view] == lightGreyPeg)  {lightGreyPeg.center = location;}


}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    
    //check for which peg is touched
    
    darkGreyPeg.center = location;
    
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self ifCollided];
    
}

/*
 checks if a dot was collided
 */
-(void)ifCollided{

    
    if(CGRectIntersectsRect(darkGreyPeg.frame, hole11.frame))
    {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 1" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
    [alert show];
    }
    else if(CGRectIntersectsRect(darkGreyPeg.frame, hole12.frame))
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 2" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
        [alert show];
    }
    else    if(CGRectIntersectsRect(darkGreyPeg.frame, hole13.frame))
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 3" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
        [alert show];
    }
    else if(CGRectIntersectsRect(darkGreyPeg.frame, hole14.frame))
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 4" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
        [alert show];
    }
 

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
