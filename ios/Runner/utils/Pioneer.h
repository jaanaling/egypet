#import <Foundation/Foundation.h>

@interface Pioneer : NSObject

- (int)clearAllPreferences;

- (void)logAppNotification:(int)isPlayerReady;

- (void)sendAppErrorData;

@end
