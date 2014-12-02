//
//  IndulgeController.m
//  W-Hotels
//
//  Created by O'NEIL AUSTIN M on 12/2/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import "IndulgeController.h"

@interface IndulgeController ()

@property BOOL isExtended;
@end

@implementation IndulgeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)expand:(id)sender
{
    self.isExtended = ! self.isExtended;
    if(self.isExtended)
    {
        self.fitFavorite.hidden=true;
        self.blissFavorite.hidden=true;
        self.fitText.hidden=true;
        self.blissText.hidden=true;
        self.dividerImage.hidden=true;
        self.titleImage.hidden=true;
        if(sender == self.blissButton)
        {
            self.blissSpaExtended.hidden=false;
        }
        else
        {
            self.fitExtended.hidden=false;
        }
        self.fitButton.hidden=true;
        [self.fitButton setImage:[UIImage imageNamed:@"Arrow-up-button.png"] forState:UIControlStateNormal];
        [self.blissButton setImage:[UIImage imageNamed:@"Arrow-up-button.png"] forState:UIControlStateNormal];
    }
    else
    {
        self.fitFavorite.hidden = false;
        self.blissFavorite.hidden = false;
        self.fitButton.hidden = false;
        self.blissButton.hidden = false;
        self.fitText.hidden = false;
        self.blissText.hidden = false;
        self.dividerImage.hidden = false;
        self.titleImage.hidden=false;
        self.blissSpaExtended.hidden = true;;
        self.fitExtended.hidden = true;
        [self.fitButton setImage:[UIImage imageNamed:@"Arrow-down-button.png"] forState:UIControlStateNormal];
        [self.blissButton setImage:[UIImage imageNamed:@"Arrow-down-button.png"] forState:UIControlStateNormal];
    }
}

@end
