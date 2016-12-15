//
//  ViewController.m
//  JLeeStar
//
//  Created by 李杰 on 2016/12/15.
//  Copyright © 2016年 李杰. All rights reserved.
//

#import "ViewController.h"
#import "JLShowStar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JLShowStar *star = [[JLShowStar alloc]initWithFrame:CGRectMake(50, 200, 200, 50)];
    star.backgroundColor = [UIColor lightGrayColor];
    [star changeThePoint:2.3];
    
    [self.view addSubview:star];

    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(50, 400, 200, 50)];
    view = [star showStarWithThePoint:0.4];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
