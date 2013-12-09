//
//  NewEntryViewController.h
//  RST
//
//  Created by Abimael Medina on 11/30/13.
//  Copyright (c) 2013 Abimael Medina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewEntryViewController : UIViewController
{
    IBOutlet UITextField *PoD;
    IBOutlet UITextField *Name;
    IBOutlet UITextField *Po;
    IBOutlet UITextField *Phone;
    IBOutlet UITextField *PuDate;
    IBOutlet UITextField *Status;
    IBOutlet UITextView *Comments;
    IBOutlet UITextField *Sku;
    IBOutlet UITextField *Price;
    IBOutlet UITextField *Qty;
}

@property (strong, nonatomic) IBOutlet UITextField *PoD;
@property (strong, nonatomic) IBOutlet UITextField *Name;
@property (strong, nonatomic) IBOutlet UITextField *Po;
@property (strong, nonatomic) IBOutlet UITextField *Phone;
@property (strong, nonatomic) IBOutlet UITextField *PuDate;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UITextField *Sku;
@property (strong, nonatomic) IBOutlet UITextField *Status;
@property (strong, nonatomic) IBOutlet UITextField *Price;
@property (strong, nonatomic) IBOutlet UITextField *Qty;
@property (strong, nonatomic) IBOutlet UITextView *Comments;


-(IBAction) textFieldReturn:(id) sender;
-(IBAction) btnSave:(id) sender;

@end
