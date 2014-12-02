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
    
    if(sender == self.DropDown1)
        self.flag = 1 - (self.flag%2);
    else if(sender == self.DropDown2)
        self.flag = self.flag < 2? 2: 0;
    
    
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
    }
    
}
@end
