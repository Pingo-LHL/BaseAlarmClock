//
//  ViewController.m
//  AlarmClockProject
//
//  Created by Samer Rohani on 2015-11-17.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIUserNotificationType types = UIUserNotificationTypeBadge |
    UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
    
    UIUserNotificationSettings *mySettings =
    [UIUserNotificationSettings settingsForTypes:types categories:nil];
    
    [[UIApplication sharedApplication] registerUserNotificationSettings:mySettings];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setAlarm:(id)sender {
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateStyle = NSDateFormatterMediumStyle;
    dateFormat.timeStyle = NSDateFormatterShortStyle;
    
    
    NSString *dateString = [dateFormat stringFromDate:self.datePicker.date];
    NSLog(@"%@",dateString);
    
    [self alarmNotification:self.datePicker.date];

}
    - (IBAction)cancelAlarm:(id)sender {
    
    NSLog(@"cancel alarm");
}

- (void)alarmNotification: (NSDate *) alarmDate {
    
    UILocalNotification *notify = [[UILocalNotification alloc] init];
    
    notify.fireDate = alarmDate;
    notify.alertTitle = @"wake up!";
    notify.alertBody = @"TA meeting";
//    notify.soundName = @""
    
    
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notify];
    
    
}


@end
