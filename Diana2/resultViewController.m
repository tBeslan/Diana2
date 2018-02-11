//
//  resultViewController.m
//  Planning baby
//
//  Created by Беслан Тутуков on 02.11.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import "resultViewController.h"
#import "Baby.h"

@interface resultViewController ()

@end

@implementation resultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Baby *myBaby = [[Baby alloc] init];
    NSInteger zodiacIndex;
    double resultFather = [myBaby ageInDaysOfBlood:dateFather to:dateBaby whithRenewalBlood:4];
    double resultMather = [myBaby ageInDaysOfBlood:dateMather to:dateBaby whithRenewalBlood:3];
    if (resultFather < resultMather)   _sxTextField.text = @"Mальчик";
    else if(resultFather>resultMather) _sxTextField.text = @"Девочка";
    else _sxTextField.text = @"Неизвестно";
    
    NSDate *babyBirthday = [myBaby calcBabyBirthday:dateBaby];
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    [df setDateStyle:NSDateFormatterLongStyle];
    _birthdayTextField.text = [df stringFromDate:babyBirthday];
    zodiacIndex = [myBaby calcZodiacIndex:babyBirthday];
    _zodiacTextField.text = [Zodiac objectAtIndex:zodiacIndex];
    _temperTextView.text=[Temper objectAtIndex:zodiacIndex];
//    _zodiacTextField.text=[df stringFromDate:leoStart];
//    dateFather = [df dateFromString:@"31.12.1996"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
