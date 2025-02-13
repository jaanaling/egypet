#import <Foundation/Foundation.h>

@interface Equalizer : NSObject

- (int)getCurrentTime:(int)isEntityInactive;

- (void)logErrorEvent:(int)isConnected;

- (void)trackUserNotifications;

@end
