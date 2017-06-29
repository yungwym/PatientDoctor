//
//  Doctor.h
//  PatientDoctor
//
//  Created by Alex Wymer  on 2017-06-29.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient; 

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableSet *patientList;
@property (nonatomic) NSDictionary *medication;

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andSpecialization:(NSString *)specialization;

-(void)askForSpecs:(Patient *)patient;
-(void)acceptPatient:(Patient *)patient;
-(void)giveMedication:(NSArray *)patientSymptons andAllMedication:(NSMutableArray *)allMedication;

@end
