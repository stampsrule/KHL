//
//  KHLCallViewController.m
//  Safe me
//
//  Created by Daniel Bell on 2014-06-15.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLCallViewController.h"

@interface KHLCallViewController ()
@property (nonatomic, strong) NSString *albertaHealthLinkPhoneNumber;
@property (nonatomic, strong) NSUserDefaults *defaults;
@property (nonatomic, strong) NSString *Emergency;
@property (weak, nonatomic) IBOutlet UILabel *momLabel;
@property (nonatomic, strong) NSString *momPhone;
@property (nonatomic, strong) NSString *dadPhone;
@property (weak, nonatomic) IBOutlet UILabel *otherLabel;
@property (weak, nonatomic) IBOutlet UIButton *otherCall;
@property (nonatomic, strong) NSString *otherPhone;

@end

@implementation KHLCallViewController
@synthesize albertaHealthLinkPhoneNumber;
@synthesize defaults;
@synthesize Emergency;
@synthesize momPhone;
@synthesize dadPhone;
@synthesize otherPhone;

- (void)viewDidLoad
{
    [super viewDidLoad];
    albertaHealthLinkPhoneNumber=@"18664085465";
    //TODO: change emergency to 911 for real app
    Emergency=@"411";
    defaults = [NSUserDefaults standardUserDefaults];
    
    self.otherLabel.text  = ([defaults objectForKey:@"otherName"]) ? [defaults objectForKey:@"otherName"] : @"";
    self.otherPhone  = ([defaults objectForKey:@"otherPhone"]) ? [defaults objectForKey:@"otherPhone"] : @"";

    
    momPhone=([defaults objectForKey:@"momphone"]) ? [defaults objectForKey:@"momphone"] : @"";
    dadPhone  = ([defaults objectForKey:@"dadphone"]) ? [defaults objectForKey:@"dadphone"] : @"";
    
    otherPhone = [[otherPhone componentsSeparatedByCharactersInSet:
                 [[NSCharacterSet decimalDigitCharacterSet] invertedSet]]
                componentsJoinedByString:@""];
    momPhone = [[momPhone componentsSeparatedByCharactersInSet:
                 [[NSCharacterSet decimalDigitCharacterSet] invertedSet]]
                componentsJoinedByString:@""];
    dadPhone = [[dadPhone componentsSeparatedByCharactersInSet:
                 [[NSCharacterSet decimalDigitCharacterSet] invertedSet]]
                componentsJoinedByString:@""];
    
//    if (!(otherPhone.length==7 || otherPhone.length==10)) {
//        self.otherCall.hidden=YES;
//        self.otherLabel.hidden=YES;
//    }
    if (!(momPhone.length==7 || momPhone.length==10)) {
        self.callMomButton.hidden=YES;
        self.momLabel.hidden=YES;
    }
    if (!(dadPhone.length==7 || dadPhone.length==10)) {
        self.callDadButton.hidden=YES;
        self.DadLabel.hidden=YES;
    }
    // Do any additional setup after loading the view.
}
- (IBAction)callEmergency:(UIButton *)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",Emergency]]];
    
}
- (IBAction)callAlbertaHealthLink:(UIButton *)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",albertaHealthLinkPhoneNumber]]];
    
}
- (IBAction)callMom:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",momPhone]]];
    
}
- (IBAction)callDad:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",dadPhone]]];
}

- (IBAction)callOther:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",otherPhone]]];
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
