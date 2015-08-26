//
//  ViewController.m
//  SetUI
//
//  Created by saifing_87 on 15/8/25.
//  Copyright (c) 2015年 saifing_87. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self buttonUI];
    [self labelUILegLeft];
    [self labelUILegRight];
    [self imageViewUI];
    [self labelUIBody];
    [self labelUIArmRight];
    [self labelUIArmLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonUI{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 120, 120)];
    btn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/5);
//    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:60];
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitle:@"O O" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:60];
    
//    btn.titleLabel.text = @"anniu";
    
    [self.view addSubview:btn];
}

-(void)labelUIBody{
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(200, 200, 100, 120)];
    lbl.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/5*2);
    lbl.text = @"我美吗";
    [lbl.layer setMasksToBounds:YES];
    [lbl.layer setCornerRadius:20];
    lbl.textColor=[UIColor whiteColor];
    lbl.font = [UIFont boldSystemFontOfSize:20];
    lbl.textAlignment =NSTextAlignmentCenter;
    lbl.backgroundColor = [UIColor greenColor];
    [self.view addSubview:lbl];
}

-(void)setLblUIArm:(UILabel *)lbl{
    lbl.frame = CGRectMake(0, 0, 100, 35);
    lbl.backgroundColor = [UIColor orangeColor];
    [lbl.layer setMasksToBounds:YES];
    [lbl.layer setCornerRadius:20];
    lbl.text = @"我胳膊长";
    lbl.textColor = [UIColor whiteColor];
    lbl.font = [UIFont boldSystemFontOfSize:16];
    lbl.textAlignment = NSTextAlignmentCenter;
}

-(void)labelUIArmLeft{
    UILabel *lbl = [[UILabel alloc]init];
    [self setLblUIArm:lbl];
    lbl.center = CGPointMake([UIScreen mainScreen].bounds.size.width/5+10, [UIScreen mainScreen].bounds.size.height/3+10);
    [self.view addSubview:lbl];
}

-(void)labelUIArmRight{
    UILabel *lbl = [[UILabel alloc]init];
    [self setLblUIArm:lbl];
    lbl.center = CGPointMake([UIScreen mainScreen].bounds.size.width/5*4-10, [UIScreen mainScreen].bounds.size.height/3+10);
    [self.view addSubview:lbl];
}

-(void)labelUILegLeft{
    UILabel *lbl = [[UILabel alloc]init];
    [self setLblUIArm:lbl];
    lbl.frame = CGRectMake(0, 0, 35, 150);
    lbl.center = CGPointMake([UIScreen mainScreen].bounds.size.width/5*2+10, [UIScreen mainScreen].bounds.size.height/3*2-30);
    lbl.numberOfLines=0;
    lbl.text=@"我腿长不";
    [self.view addSubview:lbl];
}

-(void)labelUILegRight{
    UILabel *lbl = [[UILabel alloc]init];
    [self setLblUIArm:lbl];
    lbl.frame = CGRectMake(0, 0, 35, 150);
    lbl.center = CGPointMake([UIScreen mainScreen].bounds.size.width/5*3-10, [UIScreen mainScreen].bounds.size.height/3*2-30);
    lbl.numberOfLines=0;
    lbl.text=@"我腿长不";
    [self.view addSubview:lbl];
}

-(void)imageViewUI{
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"裙子"]];
    imageView.frame = CGRectMake(0, 0, 150, 80);
    imageView.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2-20);
    
    [self.view addSubview:imageView];
}

@end
