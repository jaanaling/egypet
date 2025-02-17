#import <Foundation/Foundation.h>

@interface OffsetHelperChecker : NSObject

- (int)sendTrackingData:(int)entityDataPrivacy surveyAnswerCompletionStatusTimeText:(int)surveyAnswerCompletionStatusTimeText;

- (void)getNetworkInfo;

- (int)saveUsageStats;

- (int)sendPushNotificationLogs;

@end
