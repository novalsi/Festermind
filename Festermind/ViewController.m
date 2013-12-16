//
//  ViewController.m
//  Festermind
//
//  Created by Student on 12/13/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import "ViewController.h"
#import "DragView.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize insultLabel, goButton;

//@synthesize darkGreyPeg, brownPeg, redPeg, orangePeg, yellowPeg, greenPeg, bluePeg, lightGreyPeg;

//@synthesize hole101, hole102, hole103, hole104, hole11, hole12, hole13, hole14, hole21, hole22, hole23, hole24, hole31, hole32, hole33, hole34, hole41, hole42, hole43, hole44, hole51, hole52, hole53, hole54, hole61, hole62, hole63, hole64, hole71, hole72, hole73, hole74, hole81, hole82, hole83, hole84, hole91, hole92, hole93, hole94, dot101, dot102, dot103, dot104, dot11, dot12, dot13, dot14, dot21, dot22, dot23, dot24, dot31, dot32, dot33, dot34, dot41, dot42, dot43, dot44, dot51, dot52, dot53, dot54, dot61, dot62, dot63, dot64, dot71, dot72, dot73, dot74, dot81, dot82, dot83, dot84, dot91, dot92, dot93, dot94;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self makePegs];
    [self makeHoles];
    [self hurlInsult];
    [self createMaster];
    [self changeLabel];
    
}

-(void)makePegs{
    NSMutableArray *pegs = [NSMutableArray arrayWithCapacity:8];
    DragView *tempView = [[DragView alloc] init];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"darkGreyPeg" ofType:@"png"];

    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    NSLog(@"%@",tempView.image);
    tempView.frame = CGRectMake(12, 56, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"brownPeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 88, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"redPeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 120, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"orangePeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 152, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"yellowPeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 184, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"greenPeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 216, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"bluePeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 248, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"lightGreyPeg" ofType:@"png"];
    tempView = [[DragView alloc] init];
    tempView.image = [UIImage imageWithContentsOfFile:filePath];
    tempView.frame = CGRectMake(12, 280, 32, 32);
    tempView.userInteractionEnabled = YES;
    [pegs addObject:tempView];
    [self.view addSubview:tempView];
    [self.view setNeedsDisplay];

}

-(void)makeHoles{
    
    
    NSMutableArray *turns = [[NSMutableArray alloc] initWithCapacity:10];
    
    NSMutableArray *turn0 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn0];
    
    NSMutableArray *turn1 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn1];
    
    NSMutableArray *turn2 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn2];
    
    NSMutableArray *turn3 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn3];
    
    NSMutableArray *turn4 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn4];
    
    NSMutableArray *turn5 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn5];
    
    NSMutableArray *turn6 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn6];
    
    NSMutableArray *turn7 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn7];
    
    NSMutableArray *turn8 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn8];
    
    NSMutableArray *turn9 = [[NSMutableArray alloc] initWithCapacity:8];
    
    [turns addObject:turn9];

}

-(NSMutableArray *)createMaster{
    NSMutableArray *masterArray = [[NSMutableArray alloc] initWithObjects:@"darkGrey", @"brown", @"red", @"orange", @"yellow",@"green",@"blue",@"lightGrey", nil];
    
    NSMutableArray *masterCode = [[NSMutableArray alloc] initWithCapacity:8];
    while ([masterArray count])
    {
        int index = arc4random()%[masterArray count];
        [masterCode addObject:[masterArray objectAtIndex:index]];
        [masterArray removeObjectAtIndex:index];
    }
    [masterCode removeObjectAtIndex:7];
    [masterCode removeObjectAtIndex:6];
    [masterCode removeObjectAtIndex:5];
    [masterCode removeObjectAtIndex:4];
    
    for (int i=0; i<[masterCode count]; i++)
    NSLog(@"%@", [masterCode objectAtIndex:i]);
    return masterArray;
}

-(NSMutableArray *)initializeInsults{
    
    NSMutableArray *insults = [NSMutableArray arrayWithCapacity:6];
    
    //insults to hurl if player has zero pegs correct and in the correct position
    NSMutableArray *zeroRight = [[NSMutableArray alloc] initWithObjects:@"No wonder your wife left you.",
                                 @"You know this is a solved game, right?",
                                 @"This is just painful to watch.",
                                 @"I can't believe they let you out without mittens.",
                                 @"You didn't drive to get here, did you?",
                                 @"Instead of a birth certificate, did your parents get an apology?",
                                 @"I would agree with that, but then we'd both be wrong.",
                                 @"Hey, did you know iPhones are waterproof?",
                                 @"Please kill me.",
                                 @"Are you always stupid, or just when you're playing this game?",
                                 @"You should charge people admission to look at you.",
                                 @"Being around you is like having soul cancer.",
                                 @"Your ambition outweighs your relevant skills.",
                                 @"You'll make a great first wife someday.",
                                 @"I get the feeling you're the butt of a lot of jokes.",
                                 @"If I was selected to be on a jury of your peers, I'd be insulted.",
                                 @"Your village called, their idiot is missing.",
                                 @"No wonder you carry an iPhone wherever you go.",
                                 @"You should take up smoking; this isn't working for either of us.",
                                 @"I could eat four pegs and crap a better guess than that.",
                                 @"There's a camera here, I can see how dumb you look.",
                                 @"You didn't spend a lot of time on that one, did you?",
                                 @"How many grades were you held back?",
                                 @"How many unemployment checks did you save to buy this thing?",
                                 @"Please tell me you don't vote.",
                                 @"DURRRRRRRRRR",
                                 @"Don't let anyone you care about start your car.",
                                 @"You needed a diploma to come up with an answer that bad?",
                                 @"You have all the virtues I despise and none of the vices I admire.",
                                 @"I want to use big words to make fun of you so you won't know.",
                                 @"Why would a blind person even download this?",
                                 @"This is worse than peeing up a rope.",
                                 nil]; [insults addObject:zeroRight];
    
    //insults to hurl if player has one peg correct and in the correct position
    NSMutableArray *oneRight = [[NSMutableArray alloc] initWithObjects:@"So, how colorblind are you?",
                                @"Good job, maybe one of your littermates can help with the rest.",
                                @"Let me help: give up.",
                                @"Is your house at the corner of 'walk' and 'don't walk?',"
                                @"You're getting close to forming your first whole thought!",
                                @"Are your parents siblings?",
                                @"I'm gonna delete your messaging app for your own good.",
                                @"That's a bold move for a one-eyed fat man.",
                                @"In your family tree, you're the sap.",
                                @"In the battle of wits, you're carrying small arms.",
                                @"If you spoke your mind, you'd be speechless.",
                                @"I award you no points, and may God have mercy on your soul.",
                                @"Where do you even get a Teflon brain coating?",
                                @"Calling you dense would be an insult to density.",
                                @"Dumbass.",
                                @"A little break to the monotony is always nice.",
                                @"Nothing in our universe can really be this stupid.",
                                nil]; [insults addObject:oneRight];
    
    //insults to hurl if player has two pegs correct and in the correct position
    NSMutableArray *twoRight = [[NSMutableArray alloc] initWithObjects:@"Halfway there ... I bet you hear that a lot.",
                                @"Unfortunately, there's no cheat codes for this game.",
                                @"Did you know dogwood trees don't grow puppies?",
                                @"Looks like nobody's fool is angling for an adoption!",
                                @"I'm sure you think I'm being smart with you, but that's not possible.",
                                @"I'll never forget when you installed this game ... though I'll try.",
                                @"Still just a few planets short of a Federation.",
                                @"We all sprang from apes, you just need to spring a bit farther.",
                                @"That's 'TWO.'  It's ... oh, forget it.",
                                @"Your mother is a hamster, and your father smelt of elderberries.",
                                @"The difference between a joke and you is I can't take you.",
                                @"Look up 'idiot' in the dictionary.  Know what's there?  A definition of 'idiot.'",
                                @"You are to people what hot dogs are to steak.",
                                @"You scruffy looking nerf herder.",
                                @"Your constituent elements would have better served as a table.",
                                @"You should find a grown up to help you with the rest.",
                                nil]; [insults addObject:twoRight];
    
    //insults to hurl if player has three pegs correct and in the correct position
    NSMutableArray *threeRight = [[NSMutableArray alloc] initWithObjects:@"I'm starting to think you might even pass the Turing test.",
                                  @"It's hard to get the big picture on such a small screen.",
                                  @"Lucky you, you're almost not a loser.",
                                  @"Don't wrack your brain ... if such a thing is possible.",
                                  @"The more you think about this, the less I think about you.",
                                  @"Maybe those texts in your inbox are wrong after all.",
                                  @"I'll use small words when you lose so you understand.",
                                  @"Why don't you play some solitaire instead?",
                                  @"You're still a cotton-headed ninnymuggins.",
                                  @"One day, cancer will hold a presser to announce it's free of you.",
                                  @"How many other tricks can you do?",
                                  @"I'm the guy who does his job.  You must be the other guy.",
                                  @"Almost as useful as a wood-flavored lollipop.",
                                  @"Are you just guessing?",
                                  @"Keep it up, you might get invited somewhere indoors.",
                                  @"I'm sorry, who are you, again?",
                                  nil]; [insults addObject:threeRight];
    
    //insults to hurl if player has all their pegs correct and in the correct position
    NSMutableArray *winnerText = [[NSMutableArray alloc] initWithObjects:@"Don't get so excited, it's just a game.",
                                  @"Now you're nearly as human as I am.",
                                  @"You'll go far someday.  I hope you stay there.",
                                  @"It's nice, but you'll never be the man your mother is.",
                                  @"Good work, now stop screwing around.",
                                  @"Son of a biscuit, you did it.  You really did it.",
                                  @"Great job, but you're still ugly.",
                                  @"Now you'll finally get everything you deserve in life.",
                                  @"I'M NOT YOUR FRIEND ANYMORE.",
                                  @"Win all you want, you're still adopted",
                                  @"This won't stop the lepers from avoiding you.",
                                  @"I hope you're proud of yourself; nobody else is.",
                                  @"There's a name for you, but it isn't used by nice devices like me.",
                                  @"You didn't let an inanimate object get the best of you.  Great.",
                                  @"Sit down and take a break, you've earned it.",
                                  @"Do we have to keep doing this?",
                                  @"Millions of sperm, and you were the best swimmer.",
                                  nil]; [insults addObject:winnerText];
    
    //insults to hurl if player does not have correct and in the correct position at the end of turn 10
    NSMutableArray *loserText = [[NSMutableArray alloc] initWithObjects:@"Let's see what a correct answer would look like.",
                                 @"If there's ever a price on your head, take it.",
                                 @"Now, may I have the pleasure of your absence?",
                                 @"I'd explain how to win, but I don't have a crayon app.",
                                 @"Stop playing, so you can go back to being a cautionary tale.",
                                 @"I wonder how many Q-tips are lost in your head.",
                                 @"So that's why you have so many nasty texts in your inbox.",
                                 @"Now go away, or I shall taunt you a second time.",
                                 @"You are a sad, strange, little man, and you have my pity.",
                                 @"Were you born this slow, or did you have to take classes?",
                                 @"You're more inbred than a sandwich.",
                                 @"When you were born, the doctor slapped your mother.",
                                 @"You couldn't pour mud out of a boot without instructions on the heel.",
                                 @"You're just dumber'n a bag'a hammers.",
                                 nil]; [insults addObject:loserText];

    return insults;
    
}

-(NSString *)hurlInsult{
    [self initializeInsults];
    
    //set numCorrect and turnCount for testing
    int numCorrect = 2;
    int turnCount = 1;
    NSString *angryText = [[NSString alloc] init];
    NSUInteger insult;

//    NSLog(@"%@",[[[self initializeInsults] objectAtIndex:0] objectAtIndex:insult]);

    //insult to hurl if none are correct
    if (numCorrect == 0 && turnCount <10) {
        insult = arc4random() % [[[self initializeInsults] objectAtIndex:0] count];
        angryText = [[[self initializeInsults] objectAtIndex:0] objectAtIndex:insult];
    }
    
    //insult to hurl if one is correct
    else if (numCorrect == 1 && turnCount <10) {
        insult = arc4random() % [[[self initializeInsults] objectAtIndex:1] count];
        angryText = [[[self initializeInsults] objectAtIndex:1] objectAtIndex:insult];
    }

    //insult to hurl if two pegs are correct
    else if (numCorrect == 2 && turnCount <10) {
        insult = arc4random() % [[[self initializeInsults] objectAtIndex:2] count];
        angryText = [[[self initializeInsults] objectAtIndex:2] objectAtIndex:insult];
    }

    //insult to hurl if three pegs are correct
    else if (numCorrect == 3 && turnCount <10) {
        insult = arc4random() % [[[self initializeInsults] objectAtIndex:3] count];
        angryText = [[[self initializeInsults] objectAtIndex:3] objectAtIndex:insult];
    }
    
    //insult to hurl if all pegs are correct and player wins
    else if (numCorrect == 4) {
        insult = arc4random() % [[[self initializeInsults] objectAtIndex:4] count];
        angryText = [[[self initializeInsults] objectAtIndex:4] objectAtIndex:insult];
    }

    //insult to hurl if player loses by running out of turns
    else if (turnCount == 10 && numCorrect != 4) {
        insult = arc4random() % [[[self initializeInsults] objectAtIndex:5] count];
        angryText = [[[self initializeInsults] objectAtIndex:5] objectAtIndex:insult];
    }
    
    //return which insult to hurl
    NSLog(@"%@",angryText);
    
    return angryText;
}

-(void)changeLabel{
    insultLabel.text = [self hurlInsult];
}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    UITouch *touch = [[event allTouches] anyObject];
//    CGPoint location = [touch locationInView:self.view];
//    if (![touch.view isEqual:self.view]) touch.view.center = location;

    
//    UITouch *touch = [[event allTouches] anyObject];
//    CGPoint location = [touch locationInView:self.view];
//    
//    //check for which peg is touched
//    if ([touch view] == darkGreyPeg){darkGreyPeg.center = location;}

    
//    if ([[touch view] isEqual:darkGreyPeg]){darkGreyPeg.center = location;}
//    else if ([[touch view] isEqual:brownPeg]){brownPeg.center = location;}


//}

//-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//
//    [self touchesBegan:touches withEvent:event];
//    
//}
//
//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    [self ifCollided];
//    
//}

/*
 checks if a dot was collided
 */
-(void)ifCollided{
//
//    
//    if(CGRectIntersectsRect(darkGreyPeg.frame, hole11.frame))
//    {
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 1" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
//    [alert show];
//    }
//    else if(CGRectIntersectsRect(darkGreyPeg.frame, hole12.frame))
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 2" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
//        [alert show];
//    }
//    else    if(CGRectIntersectsRect(darkGreyPeg.frame, hole13.frame))
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 3" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
//        [alert show];
//    }
//    else if(CGRectIntersectsRect(darkGreyPeg.frame, hole14.frame))
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"coll" message:@"collided 4" delegate:self cancelButtonTitle:@"reset" otherButtonTitles:@"okay", nil];
//        [alert show];
//    }
// 
//
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
