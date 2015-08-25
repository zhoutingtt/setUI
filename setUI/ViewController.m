//
//  ViewController.m
//  setUI
//
//  Created by Apple on 15/8/25.
//  Copyright (c) 2015年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self buttonUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonUI{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 10, 120, 120)];
//    button = [UIColor blackColor];
    button.center= CGPointMake([UIScreen mainScreen].bounds.size.width/2 , [UIScreen mainScreen].bounds.size.height/4 );
    button.layer.cornerRadius = 60;
    [button setTitle:@"Button" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [self.view addSubview:button];
}

-(void)labelUI{
    
}

@end
