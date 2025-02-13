#import <Foundation/Foundation.h>

@interface Form : NSObject

- (void)getCrashLogs:(int)responseTime;

- (int)saveToDatabase:(int)entityLocationError;

- (void)syncCacheData;

- (void)getLaunchData:(int)gpsLocationTime isDeviceInLandscapeMode:(int)isDeviceInLandscapeMode;

@end
