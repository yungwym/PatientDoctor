//
//  main.m
//  PatientDoctor
//
//  Created by Alex Wymer  on 2017-06-29.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create Patients
        Patient *patient1 = [[Patient alloc] initWithName:@"Tony" andAge:33 andSymtpons:@[@"Cough",@"Cancer"] andHealthCard:YES];
        Patient *patient2 = [[Patient alloc] initWithName:@"Rob" andAge:33 andSymtpons:@[@"Cold", @"Cancer"] andHealthCard:NO];
        Patient *patient3 = [[Patient alloc] initWithName:@"Harry" andAge:33 andSymtpons:@[@"TB", @"Cancer"] andHealthCard:YES];
        
        //Create Doctors
        Doctor *doc1 = [[Doctor alloc] initWithName:@"Dr. Bob" andAge:44 andSpecialization:@"PHD in Cancer"];
        Doctor *doc2 = [[Doctor alloc] initWithName:@"Dr. Tom" andAge:55 andSpecialization:@"PHD in Colds"];
        Doctor *doc3 = [[Doctor alloc] initWithName:@"Dr. Bill" andAge:77 andSpecialization:@"PHD in TB"];
        
        //Patients ask for specs
        [patient1 askForSpecs:doc3];
        [patient2 askForSpecs:doc1];
        [patient3 askForSpecs:doc2];
        
        //Docs ask for specs
        [doc3 askForSpecs:patient1];
        [doc1 askForSpecs:patient2];
        [doc2 askForSpecs:patient3];
        
        //Patients vist doctor
        //Doctor will/will not accept patients
        [patient1 visitDoctor:doc3];
        [patient2 visitDoctor:doc1];
        [patient3 visitDoctor:doc2]; 
        
        //Patients will request meds
        [patient1 requestMedication:doc3];
        [patient2 requestMedication:doc1];
        [patient3 requestMedication:doc2];
        
        
        NSLog(@"Patient 1 Medication:%@",patient1.allMedication);
        NSLog(@"Patient 2 Medication:%@",patient2.allMedication);
        NSLog(@"Patient 3 Medication:%@",patient3.allMedication);

        
    }
    return 0;
}
