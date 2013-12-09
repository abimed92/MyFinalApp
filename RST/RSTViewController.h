//
//  RSTViewController.h
//  RST
//
//  Created by Abimael Medina on 11/30/13.
//  Copyright (c) 2013 Abimael Medina. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RSTViewController : UIViewController
{
    IBOutlet UIScrollView *scrollView;
    IBOutlet UITextField *Budget;
    IBOutlet UITextField *MTD;
    IBOutlet UITextField *Needed;
    IBOutlet UITextField *Dleft;
    IBOutlet UITextField *Daverage;
    IBOutlet UITextField *Pplan;
    
}
//UI objects
@property (nonatomic, retain) UIScrollView *scrollView;
@property (retain, nonatomic) IBOutlet UITextField *Budget;
@property (retain, nonatomic) IBOutlet UITextField *MTD;
@property (retain, nonatomic) IBOutlet UITextField *Needed;
@property (retain, nonatomic) IBOutlet UITextField *Dleft;
@property (retain, nonatomic) IBOutlet UITextField *Daverage;
@property (retain, nonatomic) IBOutlet UITextField *Pplan;





//textbox keyhide when enterkey pressed
-(IBAction) textFieldReturn:(id) sender;

@end
