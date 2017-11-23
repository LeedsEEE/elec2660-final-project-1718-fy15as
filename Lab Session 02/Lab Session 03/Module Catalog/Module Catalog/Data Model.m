//
//  Data Model.m
//  Module Catalog
//
//  Created by Abhraneel Sen [fy15as] on 09/10/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import "Data Model.h"

@implementation Data_Model
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.LevelOneModules = [NSMutableArray array];
        Module *ELEC1130 = [[Module alloc] init];
        ELEC1130.Title = @"Circuit Analysis & Design";
        ELEC1130.Credits = 20;
        ELEC1130.Staff = @"Dr. Chris Trayner";
        ELEC1130.Code = @"ELEC1130";
        
        self.LevelOneModules = [NSMutableArray array];
        Module *ELEC1620 = [[Module alloc] init];
        ELEC1620.Title = @"Digital Electronics & Microcontrollers";
        ELEC1620.Credits = 20;
        ELEC1620.Staff = @"Dr. Craig Evans";
        ELEC1620.Code = @"ELEC1620";
        
        self.LevelOneModules = [NSMutableArray array];
        Module *ELEC1900 = [[Module alloc] init];
        ELEC1900.Title = @"Physical Electronics 1";
        ELEC1900.Credits = 10;
        ELEC1900.Staff = @"Prof. Edmund Linfield ";
        ELEC1900.Code = @"ELEC1900";
        
        self.LevelOneModules = [NSMutableArray array];
        Module *ELEC1702 = [[Module alloc] init];
        ELEC1702.Title = @"Engineering Mathematics";
        ELEC1702.Credits = 10;
        ELEC1702.Staff = @"Prof. Christoph Walti";
        ELEC1702.Code = @"ELEC1702";
        
        self.LevelOneModules = [NSMutableArray array];
        Module *ELEC1405 = [[Module alloc] init];
        ELEC1405.Title = @"Communications Network & Signals";
        ELEC1405.Credits = 10;
        ELEC1405.Staff = @"Dr. Mohsen Razavi";
        ELEC1405.Code = @"ELEC1405";
        
        self.LevelOneModules = [NSMutableArray array];
        Module *ELEC1703 = [[Module alloc] init];
        ELEC1703.Title = @"Algorithms & Numerical Mathematics";
        ELEC1703.Credits = 10;
        ELEC1703.Staff = @"Dr. Dragan Indjin";
        ELEC1703.Code = @"ELEC1703";
        
        [self.LevelOneModules addObject:ELEC1130]; //Index 0
        [self.LevelOneModules addObject:ELEC1620]; //Index 1
        [self.LevelOneModules addObject:ELEC1900]; //Index 2
        [self.LevelOneModules addObject:ELEC1702]; //Index 3
        [self.LevelOneModules addObject:ELEC1405]; //Index 4
        [self.LevelOneModules addObject:ELEC1703]; //Index 5
        
        }
    return self;
}


@end
