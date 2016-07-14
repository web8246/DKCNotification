//
//  NotificationViewWithImage.m
//  NotificationWithADExample
//
//  Created by dean on 2016/7/14.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "NotificationViewWithImage.h"

#define screenW [UIScreen mainScreen].bounds.size.width
#define screenH [UIScreen mainScreen].bounds.size.height

@interface NotificationViewWithImage ()
@property (nonatomic ,strong)UILabel *label;
@property (nonatomic ,strong) UIImageView *imageView;
@property (nonatomic, strong)NotificationViewWithImage *myself;


@end

@implementation NotificationViewWithImage

-(instancetype) init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [UILabel new];
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"father.png"]];
        self.label.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:self.label];
        [self addSubview:self.imageView];
        
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(0, 0, screenW, screenH - screenH / 8);
    self.label.frame = CGRectMake(0, screenH - screenH / 8, screenW, screenH / 8);
    
}

+(instancetype)shareHudWithTitle:(NSString *)title
{
    NotificationViewWithImage *hud = [[NotificationViewWithImage alloc] init];
    hud.frame = CGRectMake(0, 0, screenW, screenH);
    NSString *string = [NSString stringWithFormat:@"%@",title];
    hud.label.text = string;
    
    return hud;
    
}

-(void)show
{
    [UIView animateWithDuration:0.6 animations:^{
        self.alpha = 1.0f;
        self.frame = CGRectMake(0, 0, screenW, screenH);
    }];
    
    
    
    [UIView animateWithDuration:0.6 animations:^{
        self.alpha = 1.0f;
        self.frame = CGRectMake(0, 0, screenW, screenH);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.6 delay:1.5 options:kNilOptions animations:^{
            self.alpha = 0.0f;
            self.frame = CGRectMake(0, 0, 0, 0);
        } completion:nil];
    }];
    
    
}


@end
