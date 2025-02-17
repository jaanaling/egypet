#import <Foundation/Foundation.h>

@interface NotificationReset : NSObject

- (int)saveSessionData:(int)entityEngagement messageList:(int)messageList;

- (void)setCrashReporting;

- (int)getSyncStatus;

- (int)sendUserActivityData;

@end
