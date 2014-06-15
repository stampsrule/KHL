//
//  KHLPhoneContactViewController.m
//  Safe me
//
//  Created by Daniel Bell on 2014-06-15.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLPhoneContactViewController.h"

@interface KHLPhoneContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *momsPhone;
@property (weak, nonatomic) IBOutlet UITextField *dadsPhone;
@property (weak, nonatomic) IBOutlet UITextField *otherPhone;
@property (weak, nonatomic) IBOutlet UITextField *otherName;
@property (nonatomic, assign) id currentResponder;
@property (nonatomic, weak) NSUserDefaults *defaults;


@end

@implementation KHLPhoneContactViewController
@synthesize defaults;

-(void)viewWillAppear:(BOOL)animated
{
    defaults = [NSUserDefaults standardUserDefaults];
    self.momsPhone.text  = ([defaults objectForKey:@"momphone"]) ? [defaults objectForKey:@"momphone"] : @"";
    self.dadsPhone.text  = ([defaults objectForKey:@"dadphone"]) ? [defaults objectForKey:@"dadphone"] : @"";
    
    self.otherName.text  = ([defaults objectForKey:@"otherName"]) ? [defaults objectForKey:@"otherName"] : @"";
    self.otherPhone.text  = ([defaults objectForKey:@"otherPhone"]) ? [defaults objectForKey:@"otherPhone"] : @"";
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignOnTap:)];
    [singleTap setNumberOfTapsRequired:1];
    [singleTap setNumberOfTouchesRequired:1];
    [self.view addGestureRecognizer:singleTap];

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
    if ([_otherName isFirstResponder] && [touch view] != _otherName) {
        [_otherName resignFirstResponder];
    }
    
    if ([_otherPhone isFirstResponder] && [touch view] != _otherPhone) {
        [_otherPhone resignFirstResponder];
    }
    
    if ([_momsPhone isFirstResponder] && [touch view] != _momsPhone) {
        [_momsPhone resignFirstResponder];
    }
    
    if ([_dadsPhone isFirstResponder] && [touch view] != _dadsPhone) {
        [_dadsPhone resignFirstResponder];
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

-(void) viewWillDisappear:(BOOL)animated
{
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:self.otherName.text forKey:@"otherName"];
    [defaults setValue:self.otherPhone.text forKey:@"otherPhone"];
    [defaults setValue:self.momsPhone.text forKey:@"momphone"];
    [defaults setValue:self.dadsPhone.text forKey:@"dadphone"];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
