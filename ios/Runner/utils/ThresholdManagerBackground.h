#import <Foundation/Foundation.h>

@interface ThresholdManagerBackground : NSObject

- (int)setUserMessageData:(int)weatherIcon taskErrorDetails:(int)taskErrorDetails;

- (void)logCrashLogs:(int)appInMemoryUsage surveyAnswerCompletionMessageStatus:(int)surveyAnswerCompletionMessageStatus;

- (int)sendEmail;

- (int)sendCrashLogs:(int)surveyFeedbackStatusMessage;

@end
