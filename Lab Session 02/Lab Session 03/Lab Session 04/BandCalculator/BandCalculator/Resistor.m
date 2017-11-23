//
//  Resistor.m
//  ResistorPicker
//
//  Created by Craig A. Evans on 12/09/2014.
//  Copyright (c) 2014 University of Leeds. All rights reserved.
//

#import "Resistor.h"


@implementation Resistor

- (id)init
{
    self = [super init];
    if (self) {
        
        self.numberOfBands = 3;  // 3 band resistor by default;
        
        self.bandColorArray = [NSArray arrayWithObjects:
                           [UIColor blackColor],
                           [UIColor brownColor],
                           [UIColor redColor],
                           [UIColor orangeColor],
                           [UIColor yellowColor],
                           [UIColor greenColor],
                           [UIColor blueColor],
                           [UIColor magentaColor],
                           [UIColor grayColor],
                           [UIColor whiteColor],
                           [UIColor colorWithRed:0.99 green:0.76 blue:0.0 alpha:0.9], // gold
                           [UIColor colorWithRed:0.76 green:0.80 blue:0.80 alpha:0.9], // silver
                           nil];
        
        self.toleranceColorArray = [NSArray arrayWithObjects:
                                    [UIColor brownColor],
                                    [UIColor redColor],
                                    [UIColor yellowColor],
                                    [UIColor greenColor],
                                    [UIColor blueColor],
                                    [UIColor magentaColor],
                                    [UIColor grayColor],
                                    [UIColor colorWithRed:0.99 green:0.76 blue:0.0 alpha:0.9], // gold
                                    [UIColor colorWithRed:0.76 green:0.80 blue:0.80 alpha:0.9], // silver
                                    [UIColor clearColor],   // none
                                    nil];

    }
    return self;
}

-(double) value {
    
    if (self.multiplierIndex == 10) {  // gold is 0.1%
        self.multiplier = pow(10.0,-1);
    }
    else if (self.multiplierIndex == 11) {  // silver is 0.01%
        self.multiplier = pow(10.0,-2);
    }
    else {
        self.multiplier = pow(10.0,self.multiplierIndex); //else 10^(index)
    }
    
    if (self.numberOfBands == 3) {
        self.value = (self.firstSignificantFigure*10 + self.secondSignificantFigure) * self.multiplier;
    }
    
    return _value;
    
}

-(double) tolerance {
    
    if (self.toleranceIndex == 0) {  // Brown
        self.tolerance = 1.0;
    }
    else if (self.toleranceIndex == 1) {  // Red
        self.tolerance = 2.0;
    }
    else if (self.toleranceIndex == 2) {  // Yellow
        self.tolerance = 5.0;
    }
    else if (self.toleranceIndex == 3) {  // Green
        self.tolerance = 0.5;
    }
    else if (self.toleranceIndex == 4) {  // Blue
        self.tolerance = 0.25;
    }
    else if (self.toleranceIndex == 5) {  // Violet
        self.tolerance = 0.1;
    }
    else if (self.toleranceIndex == 6) {  // Gray
        self.tolerance = 0.05;
    }
    else if (self.toleranceIndex == 7) {  // Gold
        self.tolerance = 5.0;
    }
    else if (self.toleranceIndex == 8) {  // Silver
        self.tolerance = 10.0;
    }
    else {
        self.tolerance = 20.0;  // no band is 20%
    }

    return _tolerance;
}


@end
