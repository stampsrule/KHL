//
//  KHLMyConditionViewController.m
//  Safe me
//
//  Created by Daniel Bell on 2014-06-15.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLMyConditionViewController.h"

@interface KHLMyConditionViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *epi1;
@property (weak, nonatomic) IBOutlet UIImageView *epi2;
@property (weak, nonatomic) IBOutlet UIImageView *epi3;
@property (weak, nonatomic) IBOutlet UIImageView *epi4;
@property (weak, nonatomic) IBOutlet UIImageView *asthme1;
@property (nonatomic, strong) NSUserDefaults *defaults;
@property (nonatomic, strong) NSString *condition;

@end

@implementation KHLMyConditionViewController
@synthesize defaults;
@synthesize condition;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.epi1.hidden=YES;
    self.epi2.hidden=YES;
    self.epi3.hidden=YES;
    self.epi4.hidden=YES;
    self.asthme1.hidden=YES;
    
    // Do any additional setup after loading the view.
    defaults = [NSUserDefaults standardUserDefaults];    
    if ([([defaults objectForKey:@"asthma"]) ? [defaults objectForKey:@"asthma"] : @"" isEqualToString:@"YES"]) {
        self.epi1.hidden=YES;
        self.epi2.hidden=YES;
        self.epi3.hidden=YES;
        self.epi4.hidden=YES;
        self.asthme1.hidden=NO;
    } else if ([([defaults objectForKey:@"allergies"]) ? [defaults objectForKey:@"allergies"] : @"" isEqualToString:@"YES"]){
        self.epi1.hidden=NO;
        self.epi2.hidden=NO;
        self.epi3.hidden=NO;
        self.epi4.hidden=NO;
        self.asthme1.hidden=YES;
        
    }
    
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
