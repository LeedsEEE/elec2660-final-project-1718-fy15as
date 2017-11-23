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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) sliderValueChanged: (id)user
{
    if (user == _slider) {
        _sliderLabel.text = [NSString stringWithFormat:@"£%.0f",_slider.value*2000];
    }
}


@end
