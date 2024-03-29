//
//  UIViewController+DineController.h
//  W-Hotels
//
//  Created by HERNANDEZ ROBERTO H on 11/23/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DineController : UIViewController
@property int flag;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;

//Buttons
@property (strong, nonatomic) IBOutlet UIButton *DropDown1;
@property (strong, nonatomic) IBOutlet UIButton *DropDown2;
@property (strong, nonatomic) IBOutlet UIButton *Favorite1;
@property (strong, nonatomic) IBOutlet UIButton *Favorite2;

//Images
@property (strong, nonatomic) IBOutlet UIImageView *CookHall_Cond;
@property (strong, nonatomic) IBOutlet UIImageView *LivingRoom_Cond;
@property (strong, nonatomic) IBOutlet UIImageView *Scroll1;
@property (strong, nonatomic) IBOutlet UIImageView *ExpandedImage;



- (IBAction)DropDownClicked:(id)sender;
- (IBAction)RewardClick:(id)sender;

@end
