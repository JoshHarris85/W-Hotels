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
    
    self.flag = 0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)DropDownClicked:(id)sender
{
    
    if(self.flag == 0)
    {
        self.ExpandedImage.image = sender == self.DropDown1? [UIImage imageNamed:@"Dine_CookHall_Expanded.png"] : [UIImage imageNamed:@"Dine_TheLivingRoom_Expanded.png"];
        [self.DropDown1 setImage:[UIImage imageNamed:@"Arrow-up-button.png"] forState:UIControlStateNormal];
        
        [self.ExpandedImage setHidden:false];
        
        [self.CookHall_Cond setHidden:true];
        [self.LivingRoom_Cond setHidden: true];
        
        [self.DropDown2 setHidden: true];
        
        [self.Favorite1 setHidden:true];
        [self.Favorite2 setHidden:true];
        
        [self.Scroll1 setHidden:true];
        
        self.flag = 1;
    }
    else
    {
        [self.DropDown1 setImage:[UIImage imageNamed:@"Arrow-down-button.png"] forState:UIControlStateNormal];
        
        [self.ExpandedImage setHidden:true];
        
        [self.CookHall_Cond setHidden:false];
        [self.LivingRoom_Cond setHidden: false];
        
        [self.DropDown2 setHidden: false];
        
        [self.Favorite1 setHidden:false];
        [self.Favorite2 setHidden:false];
        
        [self.Scroll1 setHidden:false];
        
        self.flag = 0;
    }
    
    
    
    /*
    if(sender == self.DropDown1)
        self.flag = 1 - (self.flag%2);
    else if(sender == self.DropDown2)
        self.flag = self.flag < 2? 2: 0;
    else
        return;
    
    NSLog(@"%d",self.flag);
    
    if(self.flag == 0)
    {
        // Close First
        self.DropDown1.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
        self.CookHall_Cond.image = [UIImage imageNamed:@"Dine_CookHall_Condensed.png"];
        
        // Close Second
        self.LivingRoom_Cond.image = [UIImage imageNamed:@"Dine_TheLivingRoom_Condensed.png"];
        self.DropDown2.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
        
        self.flag = 0;
    }
    else if(self.flag == 1)
    {
        // Open First
        self.DropDown1.imageView.image = [UIImage imageNamed:@"Arrow-up-button.png"];
        self.CookHall_Cond.image = [UIImage imageNamed:@"Dine_CookHall_Expanded.png"];
        
        // Close Second
        self.LivingRoom_Cond.image = [UIImage imageNamed:@"Dine_TheLivingRoom_Condensed.png"];
        self.DropDown2.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
        
        self.flag = 1;
    }
    else
    {
        // Close First
        self.DropDown1.imageView.image = [UIImage imageNamed:@"Arrow-down-button.png"];
        self.CookHall_Cond.image = [UIImage imageNamed:@"Dine_CookHall_Condensed.png"];
        
        // Open Second
        self.LivingRoom_Cond.image = [UIImage imageNamed:@"Dine_TheLivingRoom_Expanded.png"];
        self.DropDown2.imageView.image = [UIImage imageNamed:@"Arrow-up-button.png"];
        
        self.flag = 2;
    }*/
    
}

- (IBAction)RewardClick:(id)sender {
    NSURL *url;
    
    if(sender == self.Favorite1)
    {
        NSLog(@"God Dang Things");
        url = [NSURL URLWithString:@"fb://profile/<id>"];
        if([[UIApplication sharedApplication] canOpenURL:url])
            [[UIApplication sharedApplication] openURL:url];
        else
        {
            url = [NSURL URLWithString:@"https://www.facebook.com/WHotelsTest"];
            [[UIApplication sharedApplication] openURL:url];
        }
    }
    else if (sender == self.Favorite2)
    {
        url = [NSURL URLWithString:@"fb://profile/<id>"];
        if([[UIApplication sharedApplication] canOpenURL:url])
            [[UIApplication sharedApplication] openURL:url];
        else
        {
            url = [NSURL URLWithString:@"https://www.facebook.com/WHotelsTest"];
            [[UIApplication sharedApplication] openURL:url];
        }
    }
    
    
}
@end
