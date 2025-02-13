#import <Foundation/Foundation.h>

@interface CacheCallback : NSObject

- (void)logEvent;

- (int)trackAppUpdates:(int)syncDataError;

- (void)clearUsageStats:(int)appUpdateAvailable;

- (int)sendScreenViewData:(int)itemDuration;

@end
