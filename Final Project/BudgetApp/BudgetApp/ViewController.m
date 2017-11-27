//
//  ViewController.m
//  BudgetApp
//
//  Created by Abhraneel Sen [fy15as] on 21/11/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _stepper.maximumValue = 1;
    _stepper.minimumValue = -1;
    _stepper.value = 0; //Resets stepper value to 0 when +/- is pressed to avoid affecting main value
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) sliderValueChanged: (id)user
{
    if (user == _slider) {
        _sliderLabel.text = [NSString stringWithFormat:@"£%.0f",_slider.value*2000]; //Slider value goes to a maximum of £2000
    }
}

-(IBAction)stepperValueChanged:(UIStepper *)user
{
    int val = [_stepper value];
    int actualVal = [self getCurrentValue];
    _sliderLabel.text = [NSString stringWithFormat:@"£%.0d", actualVal + val];
    _stepper.value = 0;
}

- (int) getCurrentValue {
    
    NSString *stringWithoutPound = [_sliderLabel.text
                                     stringByReplacingOccurrencesOfString:@"£" withString:@""]; //Changes value without affecting the £ symbol
    int currentVal = [stringWithoutPound intValue];
    
    return currentVal; //
}

@end
