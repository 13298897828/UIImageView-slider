//
//  RootViewController.m
//  lesson_06_
//
//  Created by 张天琦 on 15/9/5.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
@interface RootViewController ()
@property (nonatomic,strong)RootView * rootView;
@end

@implementation RootViewController
-(void)loadView{
    
    self.rootView = [[RootView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.rootView;
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [_rootView.slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    
    
    // Do any additional setup after loading the view.
}
-(void)sliderAction:(UISlider * )sender{
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
