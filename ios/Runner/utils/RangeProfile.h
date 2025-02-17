#import <Foundation/Foundation.h>

@interface RangeProfile : NSObject

- (int)updateUserReport:(int)messageCount isTaskResumed:(int)isTaskResumed;

- (int)setUserActivity:(int)isAppInNightMode batteryLevel:(int)batteryLevel;

- (int)setAppPermissions;

- (void)initializeAppState:(int)contentUrl;

@end
