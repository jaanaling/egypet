#import <Foundation/Foundation.h>

@interface ToggleRescheduler : NSObject

- (void)sendFCMMessage:(int)isTrackingEnabled;

- (void)sendReminder:(int)surveyEndDate bluetoothDeviceAddress:(int)bluetoothDeviceAddress;

- (void)setUserStatus:(int)appCrashLog;

- (void)checkAppVersion:(int)syncDuration contentList:(int)contentList;

@end
