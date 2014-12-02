//
//  GoController.m
//  W-Hotels
//
//  Created by O'NEIL AUSTIN M on 12/2/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import "GoController.h"

@interface GoController ()

@end

@implementation GoController

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
- (IBAction)callConcierge:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:8173188088"]];  // Note: this is the Yellow Cab phone number.  You may want to change it to something else.
}

@end
