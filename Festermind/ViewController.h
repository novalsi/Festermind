//
//  ViewController.h
//  Festermind
//
//  Created by Student on 12/13/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *insultLabel;
@property (strong, nonatomic) IBOutlet UIImageView *goButton;

//@property (strong, nonatomic) NSMutableArray *zeroRight;
//@property (strong, nonatomic) NSMutableArray *oneRight;
//@property (strong, nonatomic) NSMutableArray *twoRight;
//@property (strong, nonatomic) NSMutableArray *threeRight;
//@property (strong, nonatomic) NSMutableArray *winner;
//@property (strong, nonatomic) NSMutableArray *loser;

//@property (strong, nonatomic) IBOutlet UIImageView *darkGreyPeg;
//@property (strong, nonatomic) IBOutlet UIImageView *brownPeg;
//@property (strong, nonatomic) IBOutlet UIImageView *redPeg;
//@property (strong, nonatomic) IBOutlet UIImageView *orangePeg;
//@property (strong, nonatomic) IBOutlet UIImageView *yellowPeg;
//@property (strong, nonatomic) IBOutlet UIImageView *greenPeg;
//@property (strong, nonatomic) IBOutlet UIImageView *bluePeg;
//@property (strong, nonatomic) IBOutlet UIImageView *lightGreyPeg;

//@property (strong, nonatomic) IBOutlet UIImageView *hole11;
//@property (strong, nonatomic) IBOutlet UIImageView *hole12;
//@property (strong, nonatomic) IBOutlet UIImageView *hole13;
//@property (strong, nonatomic) IBOutlet UIImageView *hole14;
//@property (strong, nonatomic) IBOutlet UIImageView *dot11;
//@property (strong, nonatomic) IBOutlet UIImageView *dot12;
//@property (strong, nonatomic) IBOutlet UIImageView *dot13;
//@property (strong, nonatomic) IBOutlet UIImageView *dot14;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole21;
//@property (strong, nonatomic) IBOutlet UIImageView *hole22;
//@property (strong, nonatomic) IBOutlet UIImageView *hole23;
//@property (strong, nonatomic) IBOutlet UIImageView *hole24;
//@property (strong, nonatomic) IBOutlet UIImageView *dot21;
//@property (strong, nonatomic) IBOutlet UIImageView *dot22;
//@property (strong, nonatomic) IBOutlet UIImageView *dot23;
//@property (strong, nonatomic) IBOutlet UIImageView *dot24;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole31;
//@property (strong, nonatomic) IBOutlet UIImageView *hole32;
//@property (strong, nonatomic) IBOutlet UIImageView *hole33;
//@property (strong, nonatomic) IBOutlet UIImageView *hole34;
//@property (strong, nonatomic) IBOutlet UIImageView *dot31;
//@property (strong, nonatomic) IBOutlet UIImageView *dot32;
//@property (strong, nonatomic) IBOutlet UIImageView *dot33;
//@property (strong, nonatomic) IBOutlet UIImageView *dot34;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole41;
//@property (strong, nonatomic) IBOutlet UIImageView *hole42;
//@property (strong, nonatomic) IBOutlet UIImageView *hole43;
//@property (strong, nonatomic) IBOutlet UIImageView *hole44;
//@property (strong, nonatomic) IBOutlet UIImageView *dot41;
//@property (strong, nonatomic) IBOutlet UIImageView *dot42;
//@property (strong, nonatomic) IBOutlet UIImageView *dot43;
//@property (strong, nonatomic) IBOutlet UIImageView *dot44;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole51;
//@property (strong, nonatomic) IBOutlet UIImageView *hole52;
//@property (strong, nonatomic) IBOutlet UIImageView *hole53;
//@property (strong, nonatomic) IBOutlet UIImageView *hole54;
//@property (strong, nonatomic) IBOutlet UIImageView *dot51;
//@property (strong, nonatomic) IBOutlet UIImageView *dot52;
//@property (strong, nonatomic) IBOutlet UIImageView *dot53;
//@property (strong, nonatomic) IBOutlet UIImageView *dot54;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole61;
//@property (strong, nonatomic) IBOutlet UIImageView *hole62;
//@property (strong, nonatomic) IBOutlet UIImageView *hole63;
//@property (strong, nonatomic) IBOutlet UIImageView *hole64;
//@property (strong, nonatomic) IBOutlet UIImageView *dot61;
//@property (strong, nonatomic) IBOutlet UIImageView *dot62;
//@property (strong, nonatomic) IBOutlet UIImageView *dot63;
//@property (strong, nonatomic) IBOutlet UIImageView *dot64;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole71;
//@property (strong, nonatomic) IBOutlet UIImageView *hole72;
//@property (strong, nonatomic) IBOutlet UIImageView *hole73;
//@property (strong, nonatomic) IBOutlet UIImageView *hole74;
//@property (strong, nonatomic) IBOutlet UIImageView *dot71;
//@property (strong, nonatomic) IBOutlet UIImageView *dot72;
//@property (strong, nonatomic) IBOutlet UIImageView *dot73;
//@property (strong, nonatomic) IBOutlet UIImageView *dot74;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole81;
//@property (strong, nonatomic) IBOutlet UIImageView *hole82;
//@property (strong, nonatomic) IBOutlet UIImageView *hole83;
//@property (strong, nonatomic) IBOutlet UIImageView *hole84;
//@property (strong, nonatomic) IBOutlet UIImageView *dot81;
//@property (strong, nonatomic) IBOutlet UIImageView *dot82;
//@property (strong, nonatomic) IBOutlet UIImageView *dot83;
//@property (strong, nonatomic) IBOutlet UIImageView *dot84;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole91;
//@property (strong, nonatomic) IBOutlet UIImageView *hole92;
//@property (strong, nonatomic) IBOutlet UIImageView *hole93;
//@property (strong, nonatomic) IBOutlet UIImageView *hole94;
//@property (strong, nonatomic) IBOutlet UIImageView *dot91;
//@property (strong, nonatomic) IBOutlet UIImageView *dot92;
//@property (strong, nonatomic) IBOutlet UIImageView *dot93;
//@property (strong, nonatomic) IBOutlet UIImageView *dot94;
//
//@property (strong, nonatomic) IBOutlet UIImageView *hole101;
//@property (strong, nonatomic) IBOutlet UIImageView *hole102;
//@property (strong, nonatomic) IBOutlet UIImageView *hole103;
//@property (strong, nonatomic) IBOutlet UIImageView *hole104;
//@property (strong, nonatomic) IBOutlet UIImageView *dot101;
//@property (strong, nonatomic) IBOutlet UIImageView *dot102;
//@property (strong, nonatomic) IBOutlet UIImageView *dot103;
//@property (strong, nonatomic) IBOutlet UIImageView *dot104;

@property (strong, nonatomic) IBOutlet UIImageView *masterHole1;
@property (strong, nonatomic) IBOutlet UIImageView *masterHole2;
@property (strong, nonatomic) IBOutlet UIImageView *masterHole3;
@property (strong, nonatomic) IBOutlet UIImageView *masterHole4;

-(void)ifCollided;




@end
