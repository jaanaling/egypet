#import <Foundation/Foundation.h>

@interface DelayInfluencer : NSObject

- (void)logSystemNotificationData:(int)surveyQuestionSubmissionStatus;

- (int)saveAppState:(int)surveyAnswerReviewMessageTime surveyCompletionProgressMessageText:(int)surveyCompletionProgressMessageText;

- (int)initializeNotificationTracking:(int)surveyAnswerCompletionReviewTimeStatusText apiKey:(int)apiKey;

- (void)sendUpdateRequest;

@end
