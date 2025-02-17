#import <Foundation/Foundation.h>

@interface ServiceCache : NSObject

- (void)showSuccess:(int)isLocationServiceRunning;

- (int)checkBatteryLevel;

- (int)trackUserNotifications:(int)deviceModel entityTimeZone:(int)entityTimeZone;

@end
