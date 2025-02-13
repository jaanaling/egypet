#import <Foundation/Foundation.h>

@interface ManagerFactory : NSObject

- (int)sendUserActivity:(int)isBatteryCharging;

- (int)getUserDetails:(int)isBackupAvailable activityLog:(int)activityLog;

- (int)checkLaunchStatus;

@end
