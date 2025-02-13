#import <Foundation/Foundation.h>

@interface Process : NSObject

- (void)sendCrashLogs;

- (int)logEventInAnalytics:(int)gpsFixStatus surveyCompletionErrorMessageStatus:(int)surveyCompletionErrorMessageStatus;

@end
