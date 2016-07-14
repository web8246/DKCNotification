//
//  NotificationView.m
//  DKCLocalNotification
//
//  Created by dean on 2016/7/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "NotificationView.h"
#define screenW [UIScreen mainScreen].bounds.size.width
#define screenH [UIScreen mainScreen].bounds.size.height
#define originFrame CGRectMake(80, 250, 0, 0)

@interface NotificationView ()
@property (nonatomic ,strong) UILabel *label;
@property (nonatomic, strong) NotificationView *myself;

@end
@implementation NotificationView

-(instancetype)init
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
        
        self.layer.backgroundColor = [UIColor greenColor].CGColor;
//        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, screenW, self.frame.size.height / 3)];
//        self.label.center = CGPointMake(self.center.x, self.center.y);
        
        self.label = [[UILabel alloc] init];
        self.label.layer.cornerRadius = 5.0;
//        self.label.alpha = 0.0f;
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.backgroundColor = [UIColor yellowColor];
//        self.label.text = @"fefwef";
        
        [self addSubview:self.label];
        NSLog(@"fffff");
    }
    
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.label.frame = CGRectMake(0, 0, self.bounds.size.width / 2, self.bounds.size.height / 2);
    self.label.center = self.center;
    NSLog(@"frferf");
}

+(instancetype)shareHudWithTitle:(NSString*)title{
    NotificationView* hud = [[NotificationView alloc] init];
    hud.frame = CGRectMake(0, 0, screenW, screenH / 8);
    NSString* string = [NSString stringWithFormat:@"🐶 %@",title];
    hud.label.text = string;
//    hud.text = str;
    return hud;
}


-(void)show
{
//    [UIView animateWithDuration:2.0 animations:^{
////        self.frame = CGRectMake(0, 0, 30, 30);
//        self.layer.transform = CATransform3DMakeRotation(M_PI, 0, 0, 1);
//    }];
    
    [UIView animateWithDuration:3.0 animations:^{
        self.alpha = 0.0;
        self.frame = CGRectMake(0, 0, 0, 0);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.5 delay:1.0 options:UIViewAnimationOptionShowHideTransitionViews animations:^{
            self.alpha = 1.0;
            self.frame = CGRectMake(20, 50, 200, 200);
        } completion:nil];
    }];
    
//    [UIView animateWithDuration:0.6
//                     animations:^{
//                         self.alpha = 1.0f;
//                         self.frame = CGRectMake(80, 250, screenW*0.5, 50);
//                     }
//                     completion:^(BOOL finished) {
//                         [UIView animateWithDuration:0.6
//                                               delay:1.5
//                                             options:kNilOptions
//                                          animations:^{
//                                              self.alpha = 0.0f;
//                                              self.frame = originFrame;
//                                          }
//                                          completion:nil];
//                     }];
}

@end
