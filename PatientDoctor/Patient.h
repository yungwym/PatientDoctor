//
//  Patient.h
//  PatientDoctor
//
//  Created by Alex Wymer  on 2017-06-29.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor; 

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSArray *symptons;
@property (nonatomic) BOOL validHealthCard;
@property (nonatomic) NSMutableArray *allMedication;

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andSymtpons:(NSArray *)symptons andHealthCard:(BOOL)healthCard;

-(void)askForSpecs:(Doctor *)docotr;
-(void)visitDoctor:(Doctor *)doctor;
-(void)requestMedication:(Doctor *)doctor; 


@end
