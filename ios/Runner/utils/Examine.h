#import <Foundation/Foundation.h>

@interface Examine : NSObject

- (void)clearUserSessionDetails:(int)appDescription;

- (void)updateCrashData:(int)isDeviceInPortraitMode isLocationPermissionDenied:(int)isLocationPermissionDenied;

- (void)getCurrentLocation;

@end
