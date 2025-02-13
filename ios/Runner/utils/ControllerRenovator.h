#import <Foundation/Foundation.h>

@interface ControllerRenovator : NSObject

- (int)trackUserSession:(int)isAppRunningInBackground isErrorOccurred:(int)isErrorOccurred;

- (void)initDatabase;

- (int)sendLaunchData:(int)isDeviceInPowerSavingMode;

@end
