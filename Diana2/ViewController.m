//
//  ViewController.m
//  Diana2
//
//  Created by Беслан Тутуков on 15.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import "ViewController.h"
#import "Baby.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    _txtBaby.hidden=_babyButton.hidden=_babyLabel.hidden=_dateButton.hidden=TRUE;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fatherNotification:) name:@"fatherNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(matherNotification:) name:@"matherNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(babyNotification:) name:@"babyNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(icloudNotification:) name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:[NSUbiquitousKeyValueStore defaultStore]];
    
    [self readSavedData];

    
//    NSDateFormatter *df = [[NSDateFormatter alloc]init];
//    [df setDateFormat:@"dd.MM.YYYY"];
//    _txt.text = [df stringFromDate:dateFather];

    // Do any additional setup after loading the view, typically from a nib.
//    _txt.inputView = _dpp;
}

-(void) readSavedData{
    //---Чтение настроек--------------
    //    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //    NSData *fatherData = [defaults dataForKey:@"dateFather"];
    //    NSData *matherData = [defaults dataForKey:@"dateMather"];
    //    NSData *babyData = [defaults dataForKey:@"dateBaby"];
    NSUbiquitousKeyValueStore *store = [NSUbiquitousKeyValueStore defaultStore];
    
    NSData *fatherData = [store dataForKey:@"dateFather"];
    NSData *matherData = [store dataForKey:@"dateMather"];
    NSData *babyData = [store dataForKey:@"dateBaby"];
    
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    
    dateFather = [NSKeyedUnarchiver unarchiveObjectWithData:fatherData];
    if(dateFather!=0){
        _txt.text = [df stringFromDate:dateFather];
    }
    
    dateMather = [NSKeyedUnarchiver unarchiveObjectWithData:matherData];
    if(dateMather!=0){
        _txtMather.text = [df stringFromDate:dateMather];
    }
    
    dateBaby = [NSKeyedUnarchiver unarchiveObjectWithData:babyData];
    if (dateBaby!=0) {
        _txtBaby.text = [df stringFromDate:dateBaby];
    }
    
    UIBarButtonItem *shareButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(shareButtonTapped:)];
//    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(shareButtonTapped:)];
//    UINavigationItem *shareButton = [[UINavigationItem alloc] initWithTitle:@"share"];
    self.navigationItem.rightBarButtonItem=shareButton;
}
- (void) shareButtonTapped:(UIBarButtonItem *) sender{
    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
    if ([MFMessageComposeViewController canSendText]) {
        NSDateFormatter *df = [[NSDateFormatter alloc]init];
        [df setDateStyle:NSDateFormatterLongStyle];
//        _birthdayLabel.text=[df stringFromDate:birthdayDate];
        messageController.body=[NSString stringWithFormat:@"Запланировано зачатие на %@", [df stringFromDate:dateBaby]];
//        messageController.recipients=[NSArray arrayWithObjects:@"1234", nil];
        messageController.messageComposeDelegate=self;
        [self presentViewController:messageController animated:YES completion:nil];
    }
}

- (void) messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    switch (result) {
        case MessageComposeResultSent:[self dismissViewControllerAnimated:YES completion:nil];
            break;
        case MessageComposeResultFailed:[self dismissViewControllerAnimated:YES completion:nil];
            break;
        case MessageComposeResultCancelled:[self dismissViewControllerAnimated:YES completion:nil]; break;
        default:
            break;
    }
}
//-(id) init{
//    self=[super init];
//    if (self){

//        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//        NSData *fatherData = [defaults dataForKey:@"dateFather"];
//        _applicationersion = [defaults dataForKey:]
//        dateFather = [NSKeyedUnarchiver unarchiveObjectWithData:fatherData];
//    }
//    return self;
//}

//- (void) encodeWithCoder:(NSCoder *)aCoder{
//    [aCoder encodeObject:dateFather forKey:@"dateFather"];
//    [aCoder encodeDouble:[dateFather timeIntervalSince1970] forKey:@"dateFather"];
//}

//- (id) initWithCoder:(NSCoder *)aDecoder{
//        self = [super initWithCoder:aDecoder];
//        if (self){
//            self->dateFather1 = [aDecoder decodeObjectForKey:@"dateFather"];
//            dateFather = [NSDate dateWithTimeIntervalSince1970:[aDecoder decodeDoubleForKey:@"dateFather"]];
//        }
//    return self;
//}

- (void) saveFather{
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setObject:[NSKeyedArchiver archivedDataWithRootObject:dateFather] forKey:@"dateFather"];
//    [defaults synchronize];
    NSUbiquitousKeyValueStore* store = [NSUbiquitousKeyValueStore defaultStore];
    [store setObject:[NSKeyedArchiver archivedDataWithRootObject:dateFather] forKey:@"dateFather"];
    [store synchronize];
}

- (void) saveMather{
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setObject:[NSKeyedArchiver archivedDataWithRootObject:dateMather] forKey:@"dateMather"];
//    [defaults synchronize];
    NSUbiquitousKeyValueStore* store = [NSUbiquitousKeyValueStore defaultStore];
    [store setObject:[NSKeyedArchiver archivedDataWithRootObject:dateMather] forKey:@"dateMather"];
    [store synchronize];
}

- (void) saveBaby{
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setObject:[NSKeyedArchiver archivedDataWithRootObject:dateBaby] forKey:@"dateBaby"];
//    [defaults synchronize];
    NSUbiquitousKeyValueStore* store = [NSUbiquitousKeyValueStore defaultStore];
    [store setObject:[NSKeyedArchiver archivedDataWithRootObject:dateBaby] forKey:@"dateBaby"];
    [store synchronize];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)edb:(id)sender {
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txt.text = [df stringFromDate:dateFather];
}

- (IBAction)txtMatherTouch:(id)sender {
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txtMather.text = [df stringFromDate:dateMather];
}

- (IBAction)calcButtonMethodSx:(id)sender {
   
}

- (IBAction)calcButtonMethodDate:(id)sender{
    
}

- (void) fatherNotification:(NSNotification*) notification{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txt.text  = [df stringFromDate:[notification object]];
    [self saveFather];
}

- (void) matherNotification: (NSNotification*) notification{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txtMather.text = [df stringFromDate:[notification object]];
    [self saveMather];
}

- (void) babyNotification: (NSNotification*) notification{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    _txtBaby.text = [df stringFromDate:[notification object]];
    [self saveBaby];
}

- (void) icloudNotification: (NSNotification*) notification{
    [self readSavedData];
}

- (IBAction)calcWithSegmentControlAction:(id)sender {
    if (_calcWithSwitch.selectedSegmentIndex==0) {
        _planSwitch.hidden=_sxButton.hidden=FALSE;
        _txtBaby.hidden=_babyButton.hidden=_babyLabel.hidden=_dateButton.hidden=TRUE;
        calcMethod=FOR_SX;
    }
    
    if (_calcWithSwitch.selectedSegmentIndex==1) {
        _planSwitch.hidden=_sxButton.hidden=TRUE;
        _txtBaby.hidden=_babyLabel.hidden=_babyButton.hidden=_dateButton.hidden=FALSE;
        calcMethod=FOR_DATE;
    }
}

- (IBAction)planSwithSegmentControlAction:(id)sender {
    if (_planSwitch.selectedSegmentIndex==0) {
        calcSx=MALE;
    }
    if (_planSwitch.selectedSegmentIndex==1) {
        calcSx=FEMALE;
    }
}


@end
