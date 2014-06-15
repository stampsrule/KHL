//
//  KHLMedicalConcernsViewController.m
//  Safe me
//
//  Created by Daniel Bell on 2014-06-15.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLMedicalConcernsViewController.h"

@interface KHLMedicalConcernsViewController ()
@property (nonatomic, assign) id currentResponder;
@property (nonatomic, weak) NSUserDefaults *defaults;

@end

@implementation KHLMedicalConcernsViewController
@synthesize defaults;


-(void)viewWillAppear:(BOOL)animated
{
    defaults = [NSUserDefaults standardUserDefaults];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)asthmaSelection:(UISwitch *)sender {
    if (sender.isOn==YES) {
        [defaults setValue:@"YES" forKey:@"asthma"];
    } else if (sender.isOn==NO)
    {
        [defaults setValue:@"NO" forKey:@"asthma"];
    }
}

- (IBAction)EpilepsySelection:(UISwitch *)sender {
    if (sender.isOn==YES) {
        [defaults setValue:@"YES" forKey:@"epilepsy"];
    } else if (sender.isOn==NO){
        [defaults setValue:@"NO" forKey:@"epilepsy"];
    }
}

- (IBAction)diabetesSelection:(UISwitch *)sender {
    if (sender.isOn==YES) {
        [defaults setValue:@"YES" forKey:@"diabetes"];
    } else if (sender.isOn==NO){
        [defaults setValue:@"NO" forKey:@"diabetes"];
    }
    
}
- (IBAction)allergiesSelection:(UISwitch *)sender {
    if (sender.isOn==YES) {
        [defaults setValue:@"YES" forKey:@"allergies"];
    } else if (sender.isOn==NO){
        [defaults setValue:@"NO" forKey:@"allergies"];
    }
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
