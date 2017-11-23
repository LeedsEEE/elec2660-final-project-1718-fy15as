//
//  ViewController.m
//  TestApp
//
//  Created by Abhraneel Sen [fy15as] on 14/11/2017.
//  Copyright © 2017 Abhraneel Sen [fy15as]. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int cash = 250;
    int utilitesCash;
    int grocery;
    
    if (cash == 500) {
        _box1.backgroundColor = [UIColor greenColor];
        _box0.backgroundColor = [UIColor greenColor];
        _box2.backgroundColor = [UIColor greenColor];
        _box3.backgroundColor = [UIColor greenColor];
    }
    else if (cash == 250) {
        
        _box3.backgroundColor = [UIColor whiteColor];
        _box2.backgroundColor = [UIColor whiteColor];
        _box1.backgroundColor = [UIColor yellowColor];
        _box0.backgroundColor = [UIColor yellowColor];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
