//
//  ViewController.m
//  Lab Session 02
//
//  Created by Abhraneel Sen [fy15as] on 02/10/2017.
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


- (IBAction)myButton:(UIButton *)sender {

    self.myLabel.text = @"Welcome to the University of Leeds!";
}
@end
