//
//  ViewController.m
//  Wordplay
//
//  Created by Michael Sevy on 3/10/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"orignal segue happend");
}

- (IBAction)unwindFromResults:(UIStoryboardSegue *)sender
{

}

@end
