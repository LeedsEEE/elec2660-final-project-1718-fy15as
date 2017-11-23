//
//  FirstViewController.m
//  BandCalculator
//
//  Created by Abhraneel Sen [fy15as] on 16/10/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import "FourBandViewController.h"

@interface FourBandViewController ()

@end

@implementation FourBandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
    
    self.resistor = [[Resistor alloc] init];
    self.resistor.firstSignificantFigure = 1;
    self.resistor.secondSignificantFigure = 0;
    self.resistor.multiplierIndex = 2;
    self.resistor.toleranceIndex = 4;
    NSLog(@"Resistor Value = %f",self.resistor.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Picker View Delegate Methods

 - (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    
    NSString *coordinate = [NSString stringWithFormat:@"%ld,%ld", component, row];
    
    return coordinate;
    
}

- (UIView *)pickerView:(UIPickerView *)pickerView
            viewForRow:(NSInteger)row
          forComponent:(NSInteger)component
           reusingView:(UIView *)view{
    
    UIView *band = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
                    
                    if(component ==3){
                        band.backgroundColor = [self.resistor.toleranceColorArray objectAtIndex: row];
                     } else {
                        band.backgroundColor = [self.resistor.bandColorArray objectAtIndex: row ];
                     }
                     
                     return band;
}



- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    
}

#pragma mark Picker View Data Source Methods

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger rows;
    
    if (component == 0) {
        rows = 10;              //First Significant Figure
    } else if (component == 1){
        rows = 10;              //Second Significant Figure
    } else if (component == 2){
        rows = 12;              //Multiplier
    } else if (component == 3){
        rows = [self.resistor.toleranceColorArray count];
    }
    
    
    return rows;
}

@end
