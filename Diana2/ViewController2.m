//
//  ViewController2.m
//  Diana2
//
//  Created by Беслан Тутуков on 16.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import "ViewController2.h"
#import "Baby.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
//
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    if (dateFather !=0)
    {
        _dpp.date = dateFather;
        _entText.text = [df stringFromDate:dateFather];
    }
    else
    {
        dateFather = _dpp.date;
        dateFather = [df dateFromString:@"31.12.1996"];
        _entText.text=@"31.12.1996";
        [[NSNotificationCenter defaultCenter] postNotificationName:@"fatherNotification" object:dateFather];
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

- (IBAction)dppValueChanged:(id)sender {
    dateFather = _dpp.date;
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _entText.text = [df stringFromDate:dateFather];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"fatherNotification" object:dateFather];
}


@end
