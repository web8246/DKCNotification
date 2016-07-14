//
//  NotificationView.h
//  DKCLocalNotification
//
//  Created by dean on 2016/7/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationView : UIView
-(instancetype)init;
-(instancetype)initWithFrame:(CGRect)frame;
-(void)show;
+(instancetype)shareHudWithTitle:(NSString*)title;
@end
