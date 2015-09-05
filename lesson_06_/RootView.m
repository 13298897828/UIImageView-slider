//
//  RootView.m
//  lesson_06_
//
//  Created by 张天琦 on 15/9/5.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "RootView.h"

@implementation RootView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addAllViews];
    }
    return self;
}

-(void)addAllViews{
    
    _slider =[[UISlider alloc]initWithFrame:CGRectMake(50, 50, 300, 30)];
    [self addSubview:_slider];
    _slider.minimumValueImage = [UIImage imageNamed:@"on"];
    _slider.maximumValueImage = [UIImage imageNamed:@"off"];
    _slider.value = 1;
    
    NSMutableArray * imageArray = [NSMutableArray arrayWithCapacity:1];
    for (int i = 0 ; i < 13; i ++) {
        NSString * imageName = [NSString stringWithFormat:@"image_%d.tiff",i];
        UIImage *image = [UIImage imageNamed:imageName];
        [imageArray addObject:image];
    }
    
 
    
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(80, 150, 200, 250)];
    _imageView.animationImages = imageArray;
    _imageView.animationDuration = 0.5;
    _imageView.animationRepeatCount = 2;
    [_imageView startAnimating];
    [self addSubview:_imageView];
    
    
}
@end
