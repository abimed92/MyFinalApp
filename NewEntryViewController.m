//
//  NewEntryViewController.m
//  RST
//
//  Created by Abimael Medina on 11/30/13.
//  Copyright (c) 2013 Abimael Medina. All rights reserved.
//

#import "NewEntryViewController.h"
#import "Order.h"
#import "RSTAppDelegate.h"

@interface NewEntryViewController ()

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end

@implementation NewEntryViewController


@synthesize PoD, Name, Po, Phone, PuDate, Status, Comments, Sku, Price, Qty, scrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    scrollView.frame = CGRectMake(0, 18, 320, 575); [scrollView setContentSize:CGSizeMake(320, 580)];
    [super viewDidLoad];
    //keyboard hooks
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];    //1
    RSTAppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    //2
    self.managedObjectContext = appDelegate.managedObjectContext;
    
    [super viewDidLoad];
    //keyboard hooks
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender
{
    // Add Entry to PhoneBook Data base and reset all fields
    
    //  1
    Order * newEntry = [NSEntityDescription insertNewObjectForEntityForName:@"Order"
                                                      inManagedObjectContext:self.managedObjectContext];
    //  2
    newEntry.name= self.Name.text;
    newEntry.comments = self.Comments.text;
    newEntry.sku = self.Sku.text;
    newEntry.po = self.Po.text;
    newEntry.phone = self.Phone.text;
    newEntry.poDate = self.PoD.text;
    newEntry.price = self.Price.text;
    newEntry.puDate = self.PuDate.text;
    newEntry.qty = self.Qty.text;
    newEntry.sku = self.Sku.text;
    newEntry.status = self.Status.text;
    //  3
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    //  4
    self.Name.text = @"";
    self.Comments.text = @"";
    self.Sku.text = @"";
    self.Po.text = @"";
    self.Phone.text = @"";
    self.PoD.text = @"";
    self.Price.text = @"";
    self.PuDate.text = @"";
    self.Qty.text = @"";
    self.Sku.text = @"";
    self.Status.text = @"";
    
    //  5
    [self.view endEditing:YES];
}



-(IBAction) textFieldReturn: (id) sender
{
	[sender resignFirstResponder] ;}

//Hide Keyboard
-(void) dismissKeyboard
{
    [PoD resignFirstResponder];
    [Name resignFirstResponder];
    [Po resignFirstResponder];
    [Phone resignFirstResponder];
    [PuDate resignFirstResponder];
    [Comments resignFirstResponder];
    [Sku resignFirstResponder];
    [Price resignFirstResponder];
    [Qty resignFirstResponder];
}

//Snap to entry field
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [scrollView setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [scrollView setContentOffset:CGPointZero animated:YES];
}

 

@end
