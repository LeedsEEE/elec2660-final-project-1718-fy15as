//
//  Resistor.h
//  ResistorPicker
//
//  Created by Craig A. Evans on 12/09/2014.
//  Copyright (c) 2014 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Resistor : NSObject

@property (nonatomic) double value;
@property (nonatomic) double tolerance;
@property (nonatomic) double multiplier;

@property NSInteger numberOfBands;

@property NSInteger firstSignificantFigure;
@property NSInteger secondSignificantFigure;

@property NSInteger multiplierIndex;
@property NSInteger toleranceIndex;

@property (nonatomic,strong) NSArray *bandColorArray;
@property (nonatomic,strong) NSArray *toleranceColorArray;

-(double) value;
-(double) tolerance;

@end
