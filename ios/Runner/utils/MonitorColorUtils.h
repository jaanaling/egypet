#import <Foundation/Foundation.h>

@interface MonitorColorUtils : NSObject

- (void)sendSystemNotificationReport:(int)currentScore;

- (int)getPushNotificationLogs:(int)surveyCompletionStatusMessageTime;

- (int)trackScreenVisit:(int)isEntityRegistered surveyErrorStatus:(int)surveyErrorStatus;

@end
