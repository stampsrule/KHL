//
//  KHLCallViewController.h
//  Safe me
//
//  Created by Daniel Bell on 2014-06-15.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KHLCallViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *callDadButton;
@property (weak, nonatomic) IBOutlet UIButton *callMomButton;
@property (weak, nonatomic) IBOutlet UIButton *callAlbertaHealthLinkButton;
@property (weak, nonatomic) IBOutlet UIButton *callEmergencyButton;
@property (weak, nonatomic) IBOutlet UILabel *DadLabel;

@end
