//
//  Baby.m
//  Diana2
//
//  Created by Беслан Тутуков on 16.10.14.
//  Copyright (c) 2014 Беслан Тутуков. All rights reserved.
//

#import "Baby.h"
NSDate *dateFather, *dateMather, *dateBaby;
NSArray *Zodiac;
NSArray *Temper;
NSInteger calcMethod;
NSInteger calcSx;

@implementation Baby

-(id) init{
    if (self == [super init]) {
        Zodiac = [[NSArray alloc]initWithObjects:@"Овен", @"Телец", @"Близнецы", @"Рак", @"Лев", @"Дева", @"Весы", @"Скорпион", @"Стрелец", @"Козерог", @"Водолей", @"Рыбы", @"Неизвестно", nil];
        
        Temper = [[NSArray alloc] initWithObjects:
                  @"Маленький Овен-Змея будет желать во всем руководить, не поддавайтесь на его манипуляции, иначе пострадаете в первую же очередь вы. Упрямство — это то, что будет характеризовать таких малышей. Они будут упорствовать, но добиваться своего практически любыми путями. Овны-Змеи в будущем станут вашей большой опорой и поддержкой, им будет нравиться заботиться о вас.",
                  @"Маленький Телец-Змея — это очень выносливый малыш, который будет лежать молча, даже если будет очень сильно голоден. Плачет Телец-Змея очень редко, но зато достаточно громко. Не доводите его до крайностей. Не пытайтесь советовать таким малышам, они очень свободолюбивы и, как считают сами, самостоятельны. Поэтому они не слушают советов и делают все по-своему.",
                  @"Если вам предстоит родить Близнеца-Змею, то, дорогие родители, наберитесь терпения. Такие малыши очень подвижны, изворотливы и любознательны. Близнецы-Змеи будут очень интеллектуальными малышами, развитыми не по годам. И вырастут они в маленьких хохотунчиков, которые станут душой абсолютно любой компании!",
                  @"Маленькие Раки-Змеи — это просто непредсказуемые натуры. Раки-Змеи будут тяжело забывать нанесенные им обиды. Также, воспитывая такого малыша, нельзя забывать о его собственническом характере. Ему потребуются исключительно его игрушки, его коляска и, конечно, его родители.Родители, которые не будут уделять внимание другим детям.",
                  @"Маленькие Львы-Змеи — это просто путешественники. Львята-Змеи будут забираться и в стиральную машинку, и в печь, и в шкаф, и в ящик комода, и в стол... Но помните, что малышей Львов-Змея достаточно легко обмануть в силу их наивности, поэтому учите их разбираться в людях. Львы-Змеи — это очень гордые натуры, для которых собственный даже детский авторитет очень важен.",
                  @"Девы-Змеи — это наблюдатели. Они любят смотреть на все окружающее. Если вам предстоит родить малыша именно этого знака зодиака, то привыкнете к тому, что его будет интересовать все — от старой погремушки до ваших трусиков и лифчиков, сушащихся на бельевой веревке. Девы-Змеи с легкостью замечают подвох, поэтому их очень сложно обмануть. Они даже в своем детском возрасте будут очень умны и воспитаны. ",
                  @"Если вам предстоит родить ребенка Весы-Змея, то сразу же запаситесь огромным набором дисков с записанной на них музыкой. Так как Весы-Змея от рождения уже являются меломанами.Также маленькие Весы-Змеи будут очень любить гостей и с радостью будут вам помогать готовиться к их приходу. Их дружелюбный характер будет проявляться с самого детства.",
                  @"Ваш ребенок будет очень эмоционален, но в тоже время будет любить анализировать все происходящее. Скорпионы-Змеи — это дважды ядовитые натуры, поэтому они будут легко раздражаться и даже срываться на близких людях. Научите малыша контролировать свои негативные эмоции, и вы значительно облегчите жизнь — ему и себе.",
                  @"Малыши Стрельцы-Змеи уже в вашем животе будут проявлять гиперактивность. Главная проблема в воспитании таких малышей — это укладывание их спать. Их «совиная» натура будет требовать непрерывного бодрствования, причем с непосредственным поглощением новой информации и физической активностью. Следите, чтобы ваш малыш не переутомлялся.",
                  @"Козероги-Змеи будут очень трудолюбивы. Когда вы будете их о чем-то просить, вам не придется повторять дважды. Такой малыш сделает все то, что вы просили и еще чуть-чуть. В его руках будет все чиниться, созидаться и создаваться заново. Козероги-Змеи являются долгожителями, их по жизни сама фортуна ведет за руку. ",
                  @"Маленький Водолей-Змея будет требователен и агрессивен в моменты, когда не будет получать желаемого. Такие дети будут очень ценить свой дом и часто будут наводить в нем порядок, даже без вашего напоминания. У Водолеев-Змей очень умелые руки, поэтому они будут скорее не ломать игрушки, а чинить их для младших братьев, сестер и друзей.",
                  @"Очень яркие и эмоциональные Рыбы-Змеи будут с самого младенчества строить вам различные мордочки. Щедрость — это то, что будет их характерной чертой. Поэтому не удивляйтесь, когда ваш малыш придет в детский сад с тремя игрушками, а вернется домой без единой. Он просто их подарит своим друзьям.",
                  @"Неизвестно", nil];
    }
    return self;
}

//Вычисление возраста крови в процентах
-(double)ageInDaysOfBlood:(NSDate*)birthDay to: (NSDate*)planningDate whithRenewalBlood:(NSInteger)renewalBlood{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger unitDay = NSCalendarUnitDay;
    NSUInteger unitYear = NSCalendarUnitYear;
    NSUInteger years;
    NSUInteger yearsDown=0;
    NSDateComponents *ageFromYears = [calendar components:unitYear fromDate:birthDay toDate:planningDate options:0];
    NSDateComponents *offsetYear = [[NSDateComponents alloc]init];
    
    years=[ageFromYears year];
    while (1) {
        if (years==0) break;
        if (years%renewalBlood==0) break;
        years--;
        yearsDown++;
    }
    [offsetYear setYear:-yearsDown];
    NSDate *oldDate= [calendar dateByAddingComponents:offsetYear toDate:planningDate options:0];
    ageFromYears=[calendar components:unitYear fromDate:oldDate];
    [ageFromYears setYear:years];
    NSDate *newDate = [calendar dateByAddingComponents:ageFromYears toDate:birthDay options:0];
    NSDateComponents *ageFromDays = [calendar components:unitDay fromDate:newDate toDate:planningDate options:0];
//    if (renewalBlood==4) {
      return ([ageFromDays day]*100.0)/(365*renewalBlood);
//    }else return 0;
    
    
}
/*
-(NSString*) calcBaby: (NSDate*) fatherBirthday and: (NSDate*) matherBirthday and: (NSDate*) planningDate{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM.YYYY"];
    NSUInteger unitDay = NSCalendarUnitDay;
    NSUInteger unitYear = NSCalendarUnitYear;
    //        NSUInteger unitMonth = NSCalendarUnitMonth;
//    NSDate *birthdayDate;
    NSUInteger years;
    NSUInteger yearsDown=0;
    double resultFather, resultMather;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *offsetYear = [[NSDateComponents alloc]init];
//    NSDateComponents *offsetDay = [[NSDateComponents alloc]init];
    
    
    // Father-------------
    
    NSDateComponents *ageFromYears = [calendar components:unitYear fromDate:fatherBirthday toDate:planningDate options:0];
    years=[ageFromYears year];
    while (1) {
        if (years==0) break;
        if (years%4==0) break;
        years--;
        yearsDown++;
    }
    [offsetYear setYear:-yearsDown];
    NSDate *oldDate= [calendar dateByAddingComponents:offsetYear toDate:planningDate options:0];
    ageFromYears=[calendar components:unitYear fromDate:oldDate];
    [ageFromYears setYear:years];
    NSDate *newDate = [calendar dateByAddingComponents:ageFromYears toDate:fatherBirthday options:0];
    NSDateComponents *ageFromDays = [calendar components:unitDay fromDate:newDate toDate:planningDate options:0];
    resultFather = ([ageFromDays day]*100.0)/1460.0;
    // ---------------------
    
    //    Mather--------------------
    ageFromYears = [calendar components:unitYear fromDate:matherBirthday toDate:planningDate options:0];
    years=[ageFromYears year];
    yearsDown=0;
    while (1) {
        if (years==0) break;
        if (years%3==0) break;
        years--;
        yearsDown++;
    }
    [offsetYear setYear:-yearsDown];
    oldDate= [calendar dateByAddingComponents:offsetYear toDate:planningDate options:0];
    ageFromYears = [calendar components:unitYear fromDate:oldDate];
    [ageFromYears setYear:years];
    newDate = [calendar dateByAddingComponents:ageFromYears toDate:matherBirthday options:0];
    ageFromDays = [calendar components:unitDay fromDate:newDate toDate:matherBirthday options:0];
    resultMather = ([ageFromDays day]*100.0)/1095.0;
    //    -------------------------------
 
    if (resultFather < resultMather)   return @"Родится мальчик";
    else if(resultFather>resultMather) return @"Родится девочка";
    else return @"Неизвестно";
    


}
*/

//Вычисление дня рождения ребенка от даты зачатия
-(NSDate*) calcBabyBirthday: (NSDate*)planningDate{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
//    NSDateFormatter *df = [[NSDateFormatter alloc]init];
//    [df setDateFormat:@"dd.MM.YYYY"];
    NSDateComponents *offsetDay = [[NSDateComponents alloc]init];
//    NSDate *birthdayDate;
    
    [offsetDay setDay:280];
    return [calendar dateByAddingComponents:offsetDay toDate:planningDate options:0];
//    birthdayDate=[calendar dateByAddingComponents:offsetDay toDate:planningDate options:0];
//    [df setDateStyle:NSDateFormatterLongStyle];
//    return [df stringFromDate:birthdayDate];
}

//Вычисление входит ли дата в интервал дат
-(BOOL) dateIntervalCompare:(NSDate *)dateCompare startDate:(NSDate *)start toEndDate:(NSDate *)end{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger comps = (NSCalendarUnitDay | NSCalendarUnitMonth);
    
    NSDateComponents *date1Components = [calendar components:comps
                                                    fromDate: dateCompare];
    NSDateComponents *date2Components = [calendar components:comps
                                                    fromDate: start];
    NSDateComponents *date3Components = [calendar components:comps fromDate: end];
    
    NSDate* date1 = [calendar dateFromComponents:date1Components];
    NSDate* date2 = [calendar dateFromComponents:date2Components];
    NSDate* date3 = [calendar dateFromComponents:date3Components];
    
    NSComparisonResult result1 = [date1 compare:date2];
    NSComparisonResult result2 = [date1 compare:date3];
    
    if (result1==NSOrderedDescending && result2==NSOrderedAscending) {
        return  YES;
        }
    else return NO;
}

//Вычисление знака зодиака
-(NSInteger)calcZodiacIndex:(NSDate *)planningDate{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd.MM"];
//Даты знаков зодиака
    
    NSDate *ariesStart = [df dateFromString:@"20.03"];//Овен
    NSDate *ariesEnd = [df dateFromString:@"21.04"];
    
    NSDate *taurusStart = [df dateFromString:@"20.04"];//Телец
    NSDate *taurusEnd = [df dateFromString:@"22.05"];
    
    NSDate *geminiStart = [df dateFromString:@"21.05"]; //Блезницы
    NSDate *geminiEnd =[df dateFromString:@"22.06"];
    
    NSDate *cancerStart = [df dateFromString:@"21.06"]; //Рак
    NSDate *cancerEnd =[df dateFromString:@"22.07"];
    
    NSDate *leoStart = [df dateFromString:@"22.07"]; //Лев
    NSDate *leoEnd = [df dateFromString:@"22.08"];
    
    NSDate *virgoStart = [df dateFromString:@"24.08"]; //Дева
    NSDate *virgoEnd =[df dateFromString:@"23.09"];
    
    NSDate *libraStart = [df dateFromString:@"22.09"]; //Весы
    NSDate *libraEnd =[df dateFromString:@"23.10"];
    
    NSDate *scorpioStart = [df dateFromString:@"22.10"]; //Скорпион
    NSDate *scorpioEnd =[df dateFromString:@"22.11"];
    
    NSDate *sagittariusStart = [df dateFromString:@"21.11"]; //Стрелец
    NSDate *sagittariusEnd =[df dateFromString:@"22.12"];
    
    NSDate *capricornStart = [df dateFromString:@"21.12"]; //Козерог
    NSDate *capricornEnd =[df dateFromString:@"21.01"];
    
    NSDate *aquariusStart = [df dateFromString:@"20.01"]; //Водолей
    NSDate *aquariusEnd =[df dateFromString:@"20.02"];
    
    NSDate *piscesStart = [df dateFromString:@"19.02"]; //Рыбы
    NSDate *piscesEnd =[df dateFromString:@"21.03"];
    
    if ([self dateIntervalCompare:planningDate startDate:ariesStart toEndDate:ariesEnd]) {
//        return @"Овен";
        return 0;
    } else if ([self dateIntervalCompare:planningDate startDate:taurusStart toEndDate:taurusEnd]){
        return 1;
    } else if ([self dateIntervalCompare:planningDate startDate:geminiStart toEndDate:geminiEnd]){
        return 2;
    } else if ([self dateIntervalCompare:planningDate startDate:cancerStart toEndDate:cancerEnd]){
        return 3;
    } else if ([self dateIntervalCompare:planningDate startDate:leoStart toEndDate:leoEnd]){
        return 4;
    } else if ([self dateIntervalCompare:planningDate startDate:virgoStart toEndDate:virgoEnd]){
        return 5;
    } else if ([self dateIntervalCompare:planningDate startDate:libraStart toEndDate:libraEnd]){
        return 6;
    } else if ([self dateIntervalCompare:planningDate startDate:scorpioStart toEndDate:scorpioEnd]){
        return 7;
    } else if ([self dateIntervalCompare:planningDate startDate:sagittariusStart toEndDate:sagittariusEnd]){
        return 8;
    } else if ([self dateIntervalCompare:planningDate startDate:capricornStart toEndDate:capricornEnd]){
        return 9;
    } else if ([self dateIntervalCompare:planningDate startDate:aquariusStart toEndDate:aquariusEnd]){
        return 10;
    } else if ([self dateIntervalCompare:planningDate startDate:piscesStart toEndDate:piscesEnd]){
        return 11;
    }

    return 12;
}

@end
