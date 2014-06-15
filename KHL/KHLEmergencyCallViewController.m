//
//  KHLEmergencyCallViewController.m
//  KHL
//
//  Created by Daniel Bell on 2014-06-14.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLEmergencyCallViewController.h"

@interface KHLEmergencyCallViewController ()
@property (weak, nonatomic) IBOutlet UIButton *momButton;
@property (weak, nonatomic) IBOutlet UIButton *dadButton;
@property (nonatomic, strong) NSUserDefaults *defaults;
@property (nonatomic, strong) NSString *Emergency;
@property (nonatomic, strong) NSString *momPhone;
@property (nonatomic, strong) NSString *dadPhone;
@property (weak, nonatomic) IBOutlet UIButton *EmergencyButton;


@end

@implementation KHLEmergencyCallViewController
@synthesize defaults;
@synthesize Emergency;
@synthesize momPhone;
@synthesize dadPhone;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Emergency=@"411";
    defaults = [NSUserDefaults standardUserDefaults];
    momPhone=([defaults objectForKey:@"momphone"]) ? [defaults objectForKey:@"momphone"] : @"";
    dadPhone  = ([defaults objectForKey:@"dadphone"]) ? [defaults objectForKey:@"dadphone"] : @"";
    momPhone = [[momPhone componentsSeparatedByCharactersInSet:
                 [[NSCharacterSet decimalDigitCharacterSet] invertedSet]]
                componentsJoinedByString:@""];
    dadPhone = [[dadPhone componentsSeparatedByCharactersInSet:
                 [[NSCharacterSet decimalDigitCharacterSet] invertedSet]]
                componentsJoinedByString:@""];
    if (!(momPhone.length==7 || momPhone.length==10)) {
        self.momButton.hidden=YES;
    }
    if (!(dadPhone.length==7 || dadPhone.length==10)) {
        self.dadButton.hidden=YES;
    }

}

- (IBAction)callEmergency:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",Emergency]]];
}

- (IBAction)callMom:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",momPhone]]];
}

- (IBAction)callDad:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",dadPhone]]];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)callDidComplete
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
