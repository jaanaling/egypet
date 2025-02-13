#import <Foundation/Foundation.h>

@interface ToastHelperAvatarManager : NSObject

- (void)resetUI;

- (void)setLocationPermissions:(int)maxScore;

- (void)getCurrentTime:(int)delayedTaskData;

- (void)sendVisitStatsReport:(int)isActive isWiFiConnected:(int)isWiFiConnected;

@end
