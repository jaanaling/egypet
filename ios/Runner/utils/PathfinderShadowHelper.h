#import <Foundation/Foundation.h>

@interface PathfinderShadowHelper : NSObject

- (void)setActivityDetails;

- (void)setAppActivity:(int)delayedTaskData entityHasBio:(int)entityHasBio;

- (int)setBatteryStatus:(int)isDeviceInPortraitMode isAppInBackground:(int)isAppInBackground;

- (void)saveUsageStats:(int)appFeature isServiceRunning:(int)isServiceRunning;

@end
