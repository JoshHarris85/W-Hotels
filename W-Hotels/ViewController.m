//
//  ViewController.m
//  W-Hotels
//
//  Created by Josh Harris on 11/17/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *dallasImage;
@property (weak, nonatomic) IBOutlet UIImageView *wFont;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dallasImage.image = [UIImage imageNamed:@"WSplashScreenPicture.jpg"];
    self.wFont.image = [UIImage imageNamed:@"W-Center-logo.png"];
    [self performSelector:@selector(goToNextView) withObject:nil afterDelay:3];
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)goToNextView {
    [self performSegueWithIdentifier:@"splashSegue" sender:self];
}


@end
