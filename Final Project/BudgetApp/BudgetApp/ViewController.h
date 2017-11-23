//
//  ViewController.h
//  BudgetApp
//
//  Created by Abhraneel Sen [fy15as] on 21/11/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider; //Connects slider from Main.storyboard as IBOutlet

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel; //Connects label from Main.storyboard as IBOutlet
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

-(IBAction)sliderValueChanged:(id)user;

@end

