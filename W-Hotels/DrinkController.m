//
//  DrinkController.m
//  W-Hotels
//
//  Created by O'NEIL AUSTIN M on 11/17/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import "DrinkController.h"

@interface DrinkController ()
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton2;
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;
@property (weak, nonatomic) IBOutlet UIButton *dayOfTheDeadButton;
@property (weak, nonatomic) IBOutlet UIButton *livingRoomBarButton;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfTheDeadImage;
@property (weak, nonatomic) IBOutlet UIImageView *livingRoomBarImage;
@property (weak, nonatomic) IBOutlet UIImageView *uiBar;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfTheDeadExtended;
@property (weak, nonatomic) IBOutlet UIImageView *livingRoomBarExtended;
@property BOOL isExtended;

@end

@implementation DrinkController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}
- (IBAction)expandButtonPressed:(id)sender {
    self.isExtended = !self.isExtended;
    if(self.isExtended)
    {
        self.favoriteButton.hidden = true;
        self.favoriteButton2.hidden = true;
        self.dayOfTheDeadImage.hidden = true;
        self.livingRoomBarImage.hidden = true;
        self.livingRoomBarButton.hidden = true;
        self.uiBar.hidden = true;
        if(sender == self.dayOfTheDeadButton)
        {
            self.dayOfTheDeadExtended.hidden = false;
        }
        else
        {
            self.livingRoomBarExtended.hidden = false;
        }
        [self.dayOfTheDeadButton setImage:[UIImage imageNamed:@"Arrow-up-button.png"] forState:UIControlStateNormal];
        if(self.livingRoomBarExtended.hidden == false || self.dayOfTheDeadExtended.hidden == false)
        {
           self.dayOfTheDeadButton.imageView.image = [UIImage imageNamed:@"Arrow-up-button.png"];
        }
    }
    else
    {
        [self.dayOfTheDeadButton setImage:[UIImage imageNamed:@"Arrow-down-button.png"] forState:UIControlStateNormal];
        self.favoriteButton.hidden = false;
        self.favoriteButton2.hidden = false;
        self.dayOfTheDeadImage.hidden = false;
        self.livingRoomBarImage.hidden = false;
        self.livingRoomBarButton.hidden = false;
        self.uiBar.hidden = false;
        self.livingRoomBarExtended.hidden = true;
        self.dayOfTheDeadExtended.hidden = true;
        self.livingRoomBarButton.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
    }
}
- (IBAction)profileButtonPushed:(id)sender {
    NSURL *url = [ [ NSURL alloc ] initWithString: @"https://www.starwoodhotels.com/whotels/account/sign_in.html" ];
    
    [[UIApplication sharedApplication] openURL:url];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.isExtended = false;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
