//
//  ViewController.h
//  AlarmClockProject
//
//  Created by Samer Rohani on 2015-11-17.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (void)alarmNotification: (NSDate *) alarmDate;
- (IBAction)setAlarm:(id)sender;
- (IBAction)cancelAlarm:(id)sender;

@end

