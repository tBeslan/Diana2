//
//  Baby.h
//  Diana2
//
//  Created by Беслан Тутуков on 16.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MALE 0
#define FEMALE 1
#define FOR_DATE 0
#define FOR_SX 1

extern NSDate *dateFather, *dateMather, *dateBaby;
extern NSArray *Zodiac;
extern NSArray *Temper;
extern NSInteger calcMethod;
extern NSInteger calcSx;

@interface Baby : NSObject

//@property (nonatomic, assign) NSDate *dateFather, *dateMather, *dateBaby;
//-(NSString*) calcBaby: (NSDate*) fatherBirthday and: (NSDate*) matherBirthday and: (NSDate*) planningDate;
-(double)ageInDaysOfBlood:(NSDate*)birthDay to: (NSDate*) planningDate whithRenewalBlood: (NSInteger)renewalBlood;
-(NSDate*) calcBabyBirthday: (NSDate*) planningDate;
-(NSInteger) calcZodiacIndex: (NSDate*) planningDate;
-(BOOL) dateIntervalCompare: (NSDate*)dateCompare startDate:(NSDate*)start toEndDate:(NSDate*) end;
@end
