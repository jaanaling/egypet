#import <Foundation/Foundation.h>

@interface AlertAmplifier : NSObject

- (void)trackUserActivity:(int)locationPermissionStatus;

- (int)logEvent:(int)isEntityRegistered;

@end
