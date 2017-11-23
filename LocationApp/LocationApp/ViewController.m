//
//  ViewController.m
//  LocationApp
//
//  Created by Abhraneel Sen [fy15as] on 23/10/2017.
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

- (IBAction) getLocation:(id)sender {
    
    NSLog(@"Longitude - %@", self.longitudeTextField.text);
    NSLog(@"Latitude - %@", self.latitudeTextField.text);
    
}

- (IBAction)backgroundPressed:(id)sender {
    
    NSLog(@"Background Pressed");
    
    if ([self.longitudeTextField isFirstResponder]) {
        [self.longitudeTextField resignFirstResponder];
    }
    
    if ([self.latitudeTextField isFirstResponder]) {
        [self.latitudeTextField resignFirstResponder];
    }

}


#pragma mark Text Field Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    // DISMISS KEYBOARD
    [textField resignFirstResponder];
    
    return YES;
}
@end
