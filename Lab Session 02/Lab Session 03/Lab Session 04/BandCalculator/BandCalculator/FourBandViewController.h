//
//  FirstViewController.h
//  BandCalculator
//
//  Created by Abhraneel Sen [fy15as] on 16/10/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Resistor.h"

@interface FourBandViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) Resistor *resistor;
@end

