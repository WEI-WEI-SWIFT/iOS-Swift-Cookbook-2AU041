//
//  ViewController.m
//  OldCalculator
//
//  Created by appsgaga on 2015/12/5.
//  Copyright © 2015年 appsgaga. All rights reserved.
//

#import "ViewController.h"
#import "OBJCCalculator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    OBJCCalculator * objCalculator = [[OBJCCalculator alloc]init];
    [objCalculator add:2 secondNumber:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
