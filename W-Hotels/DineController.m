//
//  UIViewController+DineController.m
//  W-Hotels
//
//  Created by HERNANDEZ ROBERTO H on 11/23/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import "DineController.h"

@implementation DineController: UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.isCondensened = true;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)DropDownClicked:(id)sender
{
    self.isCondensened = !self.isCondensened;
    if(self.isCondensened)
    {
        
        self.DropDown1.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
        self.DropDown2.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
        
        self.CookHall_Cond.hidden = false;
        self.CookHall_Expan.hidden = true;
        
        self.LivingRoom_Cond.hidden = false;
        self.LivingRoomExan.hidden = true;
        
        self.Scroll1.hidden = false;
        self.Scrool2.hidden = true;
    }
    else
    {
        self.DropDown1.imageView.image = [UIImage imageNamed:@"Arrow-up-button.png"];
        self.DropDown2.imageView.image = [UIImage imageNamed:@"Arrow-up-button.png"];
        
        self.CookHall_Cond.hidden = true;
        self.CookHall_Expan.hidden = false;
        
        self.LivingRoom_Cond.hidden = true;
        self.LivingRoomExan.hidden = false;
        
        self.Scroll1.hidden = true;
        self.Scrool2.hidden = false;
    }
    
}
@end
