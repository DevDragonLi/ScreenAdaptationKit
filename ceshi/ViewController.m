//
//  ViewController.m
//  ceshi
//
//  Created by DragonLi on 15/11/14.
//  Copyright © 2015年 李夫龙. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *lable = [[UILabel alloc]init];
    lable.frame =[FrameAutoScaleLFL CGLFLMakeX:100 Y:0 width:100 height:100];
    lable.text = @"测试";
    lable.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:lable];
    
     NSLog(@"%@",NSStringFromCGRect(lable.frame));

}


@end
