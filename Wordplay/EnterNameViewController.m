//
//  EnterNameViewController.m
//  Wordplay
//
//  Created by Michael Sevy on 3/10/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


//Conditional to Segue with text in the TextField
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqualToString:@""])
    {
        return NO;
    } else{
        return YES;
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdjectiveViewController *adjectiveVC = segue.destinationViewController;
    
    adjectiveVC.name = self.nameTextField.text;
    }






@end
