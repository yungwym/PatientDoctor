//
//  Doctor.m
//  PatientDoctor
//
//  Created by Alex Wymer  on 2017-06-29.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _specialization = specialization;
        _patientList = [[NSMutableSet alloc] init];
        _medication = @{ @"Cough" : @"Cough Syrup",
                         @"Cancer" : @"Kemo Therapy",
                         @"Cold" : @"Cold FX",
                         @"TB" : @"Isoniazid" }; 
    }
    return self;
}

-(void)askForSpecs:(Patient *)patient {
    
    NSLog(@"D: Whats your name and age?");
    NSLog(@"P: %@ and %ld", patient.name, (long)patient.age);
    
    NSLog(@"D: Ok, nice to meet you, what are your symptons?");
    NSLog(@"P: %@", patient.symptons);
    
}

-(void)acceptPatient:(Patient *)patient {
    
    if (patient.validHealthCard == YES) {
        [self.patientList addObject:patient];
        NSLog(@"D: Ok, I am now your doctor");
    } else {
        NSLog(@"D: Come back when you have a valid health card");
    }
}

-(void)giveMedication:(NSArray *)patientSymptons andAllMedication:(NSMutableArray *)allMedication {
    
    for (NSString *s in patientSymptons) {
        NSLog(@"P: I have %@", s);
        
        NSLog(@"D: Maybe this will help you, have some %@", [self.medication objectForKey:s]);
        [allMedication addObject:[self.medication objectForKey:s]];
    }
}


@end







