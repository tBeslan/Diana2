//
//  ViewController3.m
//  Diana2
//
//  Created by Беслан Тутуков on 16.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import "ViewController3.h"
#import "Baby.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    if (dateMather !=0) {
        _dpp3.date = dateMather;
        _txt3.text = [df stringFromDate:dateMather];
    }
    else {
//        dateMather = _dpp3.date;
        _txt3.text = @"31.12.1996";
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"matherNotification" object:dateMather];
    }

 
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
- (IBAction)dpp3ValueChanged:(id)sender {
     dateMather= _dpp3.date;
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txt3.text = [df stringFromDate:dateMather];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"matherNotification" object:dateMather];
}

@end
