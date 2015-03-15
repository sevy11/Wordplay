//
//  EnterAdjectiveViewController.m
//  Wordplay
//
//  Created by Michael Sevy on 3/10/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
//#import "EnterNameViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController *resultsVC = segue.destinationViewController;

    //passing data through from previous VC
    resultsVC.name = self.name;

    resultsVC.adjective = self.adjectiveTextField.text;
}
//check for text in textField
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    }else{
        return YES;
    }
}
@end
