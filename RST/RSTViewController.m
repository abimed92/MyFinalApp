//
//  RSTViewController.m
//  RST
//
//  Created by Abimael Medina on 11/30/13.
//  Copyright (c) 2013 Abimael Medina. All rights reserved.
//

#import "RSTViewController.h"


@interface RSTViewController ()


@end

@implementation RSTViewController

//Synthesize Items
@synthesize Pplan;
@synthesize Daverage;
@synthesize Budget;
@synthesize MTD;
@synthesize Needed;
@synthesize Dleft;
@synthesize scrollView;

//Variables
double *budget;
double *mtd;
double *needed;
double *dAverage;
double *pPlan;
int *dLeft;



- (void)viewDidLoad
{
    scrollView.frame = CGRectMake(0, 18, 320, 575); [scrollView setContentSize:CGSizeMake(320, 580)];
    [super viewDidLoad];
    //keyboard hooks
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) textFieldReturn: (id) sender
{
	[sender resignFirstResponder] ;}


@end
