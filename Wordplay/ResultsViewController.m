//
//  ResultsViewController.m
//  Wordplay
//
//  Created by Michael Sevy on 3/10/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ResultsViewController.h"
//#import "EnterAdjectiveViewController.h"
//#import "EnterNameViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;


@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *resultString = [NSString stringWithFormat:@"One day %@, was online coding and realized how %@ this exercise was", self.name, self.adjective];

    NSLog(@"%@, and %@ are my variables", self.name, self.adjective);

    self.resultsTextView.text = resultString;
    

}


@end
