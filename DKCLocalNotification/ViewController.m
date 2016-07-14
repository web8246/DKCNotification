//
//  ViewController.m
//  DKCLocalNotification
//
//  Created by dean on 2016/7/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "ViewController.h"
#import "NotificationView.h"
#define screenW [UIScreen mainScreen].bounds.size.width
#define screenH [UIScreen mainScreen].bounds.size.height

//自定义原始位置
#define originFrame CGRectMake(80, 250, 0, 0)

@interface ViewController ()
{
    UIView *myView;
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
    NotificationView *view = [NotificationView shareHudWithTitle:@"kkk"];
    [self.view addSubview:view];
    [view show];
    
    
    
    
//    myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 8)];
//    myView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:myView];
    
//    [self showAnimation];
    
//    [UIView animateWithDuration:0.6
//                     animations:^{
//                         myView.alpha = 1.0f;
//                         myView.frame = CGRectMake(80, 250, screenW*0.5, 50);
//                     }
//                     completion:^(BOOL finished) {
//                         [UIView animateWithDuration:0.6
//                                               delay:1.5
//                                             options:kNilOptions
//                                          animations:^{
//                                              myView.alpha = 0.0f;
//                                              myView.frame = originFrame;
//                                          }
//                                          completion:nil];
//                     }];

    
}
-(void)showAnimation{
    [UIView animateWithDuration:0.6
                     animations:^{
                         myView.alpha = 1.0f;
                         myView.frame = CGRectMake(80, 250, screenW*0.5, 50);
                     }
                     completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.6
                                               delay:1.5
                                             options:kNilOptions
                                          animations:^{
                                              myView.alpha = 0.0f;
                                              myView.frame = originFrame;
                                          }
                                          completion:nil];
                     }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (!self) {
        return NULL;
    }
    
    
    
    return self;
}



@end
