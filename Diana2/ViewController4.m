//
//  ViewController4.m
//  Diana2
//
//  Created by Беслан Тутуков on 16.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import "ViewController4.h"
#include "Baby.h"

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (dateBaby!=0) _dp4.date = dateBaby;
    else {
            dateBaby = _dp4.date;
            [[NSNotificationCenter defaultCenter] postNotificationName:@"babyNotification" object:dateBaby];
        }
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txtBaby.text = [df stringFromDate:dateBaby];
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
- (IBAction)dpValueChanged:(id)sender {
    dateBaby= _dp4.date;
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txtBaby.text = [df stringFromDate:dateBaby];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"babyNotification" object:dateBaby];
}


@end
