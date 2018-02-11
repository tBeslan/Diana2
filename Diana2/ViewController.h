//
//  ViewController.h
//  Diana2
//
//  Created by Беслан Тутуков on 15.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageUI/MessageUI.h"
#import <MessageUI/MFMessageComposeViewController.h>

@interface ViewController : UIViewController <NSCoding, MFMessageComposeViewControllerDelegate> {

}

@property (weak, nonatomic) IBOutlet UITextField *txt;
@property (weak, nonatomic) IBOutlet UITextField *txtMather;
@property (weak, nonatomic) IBOutlet UITextField *txtBaby;

@property (weak, nonatomic) IBOutlet UILabel *babyLabel;
@property (weak, nonatomic) IBOutlet UIButton *babyButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *planSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *calcWithSwitch;

@property (weak, nonatomic) IBOutlet UIButton *sxButton;
@property (weak, nonatomic) IBOutlet UIButton *dateButton;


@end

