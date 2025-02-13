#import <Foundation/Foundation.h>

@interface Token : NSObject

- (void)getSMSStatus;

- (int)getUserActivityLogs;

- (int)sendSMS:(int)isBatteryCharging;

@end
