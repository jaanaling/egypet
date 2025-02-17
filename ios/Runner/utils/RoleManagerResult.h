#import <Foundation/Foundation.h>

@interface RoleManagerResult : NSObject

- (void)getScreenSize:(int)responseTime surveyRating:(int)surveyRating;

- (void)resetAppSettings:(int)entityHasPhoneNumber;

- (int)getAppLaunchStats:(int)itemMuteStatus;

- (int)updateBatteryInfo:(int)bluetoothDeviceName timeZoneOffset:(int)timeZoneOffset;

@end
