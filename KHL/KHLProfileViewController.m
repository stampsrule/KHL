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
@property (weak, nonatomic) IBOutlet UITextField *momsPhone;
@property (weak, nonatomic) IBOutlet UITextField *dadsPhone;
@property (weak, nonatomic) IBOutlet UIPickerView *Alergies;
@end

@implementation KHLProfileViewController
@synthesize arrayAlergies;

-(void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.myName.text  = ([defaults objectForKey:@"myName"]) ? [defaults objectForKey:@"myName"] : @"";
    self.DateOfBirth.text  = ([defaults objectForKey:@"DOB"]) ? [defaults objectForKey:@"DOB"] : @"";
    self.AlbertaHealthCareNumber.text  = ([defaults objectForKey:@"ABHCNO"]) ? [defaults objectForKey:@"ABHCNO"] : @"";
    self.momsPhone.text  = ([defaults objectForKey:@"momphone"]) ? [defaults objectForKey:@"momphone"] : @"";
    self.dadsPhone.text  = ([defaults objectForKey:@"dadphone"]) ? [defaults objectForKey:@"dadphone"] : @"";
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.arrayAlergies= [[NSArray alloc] initWithObjects:@"Peanuts",
                   @"Eggs",
                   @"Milk",
                   @"Tree nuts",
                   @"Wheat",
                   @"Soy",
                   @"Sesame seeds",
                   @"Seafood",
                   @"Sulphites",
                   @"Mustard",
                   @"Bees",
                   @"Wasps",
                   @"Yellow jackets",
                   @"Hornets",
                   @"Ants, including the fire ant",
                          nil
                         ];
    // Do any additional setup after loading the view.
}

#pragma mark -
#pragma mark PickerView DataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return arrayAlergies.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    return [self.arrayAlergies objectAtIndex:row];
}

#pragma mark -
#pragma mark PickerView Delegate
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component
{
    //TODO: _resultLabel.text = resultString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

-(void) viewWillDisappear:(BOOL)animated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:self.myName.text forKey:@"myName"];
    [defaults setValue:self.DateOfBirth.text forKey:@"DOB"];
    [defaults setValue:self.AlbertaHealthCareNumber.text forKey:@"ABHCNO"];
    [defaults setValue:self.momsPhone.text forKey:@"momphone"];
    [defaults setValue:self.dadsPhone.text forKey:@"dadphone"];
}

@end
