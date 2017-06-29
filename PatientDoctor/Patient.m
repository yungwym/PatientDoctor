//
//  Patient.m
//  PatientDoctor
//
//  Created by Alex Wymer  on 2017-06-29.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andSymtpons:(NSArray *)symptons andHealthCard:(BOOL)healthCard
{
    self = [super init];
    if (self) {
        
        _name = name;
        _age = age;
        _symptons = symptons;
        _validHealthCard = healthCard;
        _allMedication = [[NSMutableArray alloc] init]; 
    }
    return self;
}

-(void)askForSpecs:(Doctor *)doctor {
    
    NSLog(@"P: Doctor Name:");
    NSLog(@"D: %@", doctor.name);
    
    NSLog(@"P: Doctor Age:");
    NSLog(@"D :%ld", (long)doctor.age);
    
    NSLog(@"P: Doctor Specailization:");
    NSLog(@"D: %@", doctor.specialization);
    
    
}


-(void)visitDoctor:(Doctor *)doctor {
    
    [doctor acceptPatient:self]; 
}

-(void)requestMedication:(Doctor *)doctor {
    
    NSLog(@"P: Hey Doc, I need medication for %@", self.symptons);
    
    if (self.validHealthCard == YES) {
        
        NSLog(@"D: Sure, here you go");
        [doctor giveMedication:self.symptons andAllMedication:self.allMedication];
    } else {
        NSLog(@"D: Sorry, you need a valid health card before I can help you");
    }
    
}
@end
