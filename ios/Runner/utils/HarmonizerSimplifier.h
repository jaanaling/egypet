#import <Foundation/Foundation.h>

@interface HarmonizerSimplifier : NSObject

- (int)loadDataFromServer;

- (int)sendAppUsageData:(int)isMediaMuted;

- (void)trackSystemNotifications:(int)taskResumeTime;

@end
