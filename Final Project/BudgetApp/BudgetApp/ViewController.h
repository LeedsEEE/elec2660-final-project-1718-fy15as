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

@property (weak, nonatomic) IBOutlet UIStepper *stepper; //Connects stepper from Main.storyboard as IB Outlet

@property (weak,nonatomic) IBOutlet UILabel *rentLabel;
@property (weak,nonatomic) IBOutlet UILabel *utilitiesLabel;
@property (weak,nonatomic) IBOutlet UILabel *groceriesLabel;
@property (weak,nonatomic) IBOutlet UILabel *drinksLabel;
@property (weak,nonatomic) IBOutlet UILabel *ticketsLabel;
@property (weak,nonatomic) IBOutlet UILabel *transportLabel;
@property (weak,nonatomic) IBOutlet UILabel *subscriptionsLabel;
@property (weak,nonatomic) IBOutlet UILabel *loanrepaymentLabel;
@property (weak,nonatomic) IBOutlet UILabel *miscellaneousLabel;

-(IBAction)sliderValueChanged:(id)user;
-(IBAction)stepperValueChanged:(UIStepper *)user;

@end

