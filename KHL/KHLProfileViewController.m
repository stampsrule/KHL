//
//  KHLProfileViewController.m
//  KHL
//
//  Created by Daniel Bell on 2014-06-14.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLProfileViewController.h"

@interface KHLProfileViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myName;
@property (weak, nonatomic) IBOutlet UITextField *DateOfBirth;
@property (weak, nonatomic) IBOutlet UITextField *AlbertaHealthCareNumber;
@property (nonatomic, assign) id currentResponder;
@property (nonatomic, weak) NSUserDefaults *defaults;
@end

@implementation KHLProfileViewController
@synthesize defaults;

-(void)viewWillAppear:(BOOL)animated
{
    defaults = [NSUserDefaults standardUserDefaults];
    self.myName.text  = ([defaults objectForKey:@"myName"]) ? [defaults objectForKey:@"myName"] : @"";
    self.DateOfBirth.text  = ([defaults objectForKey:@"DOB"]) ? [defaults objectForKey:@"DOB"] : @"";
    self.AlbertaHealthCareNumber.text  = ([defaults objectForKey:@"ABHCNO"]) ? [defaults objectForKey:@"ABHCNO"] : @"";
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignOnTap:)];
    [singleTap setNumberOfTapsRequired:1];
    [singleTap setNumberOfTouchesRequired:1];
    [self.view addGestureRecognizer:singleTap];
    // Do any additional setup after loading the view.
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}


- (void)textFieldDidBeginEditing:(UITextField *)textField {
    self.currentResponder = textField;
}

- (void)resignOnTap:(id)iSender {
    [self.currentResponder resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([_myName isFirstResponder] && [touch view] != _myName) {
        [_myName resignFirstResponder];
    }
    
    if ([_DateOfBirth isFirstResponder] && [touch view] != _DateOfBirth) {
        [_DateOfBirth resignFirstResponder];
    }
    
    if ([_AlbertaHealthCareNumber isFirstResponder] && [touch view] != _AlbertaHealthCareNumber) {
        [_AlbertaHealthCareNumber resignFirstResponder];
    }
    
    [super touchesBegan:touches withEvent:event];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillDisappear:(BOOL)animated
{
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:self.myName.text forKey:@"myName"];
    [defaults setValue:self.DateOfBirth.text forKey:@"DOB"];
    [defaults setValue:self.AlbertaHealthCareNumber.text forKey:@"ABHCNO"];
}

@end
