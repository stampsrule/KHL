//
//  KHLProfileViewController.h
//  KHL
//
//  Created by Daniel Bell on 2014-06-14.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KHLProfileViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet  UIPickerView *picker;
@property (strong, nonatomic) NSArray *arrayAlergies;

@end