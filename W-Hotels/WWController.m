//
//  UIViewController+WWController.m
//  W-Hotels
//
//  Created by HERNANDEZ ROBERTO H on 11/23/14.
//  Copyright (c) 2014 Team Silver. All rights reserved.
//

#import "WWController.h"

@implementation WWController : UIViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.phone = @"12143974100";
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CallButtonClicked:(id)sender
{
    NSString *phone = (@"tel:%@",self.phone);
    NSLog(@"%@",phone);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phone]];
}
@end
