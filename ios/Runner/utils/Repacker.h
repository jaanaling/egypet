#import <Foundation/Foundation.h>

@interface Repacker : NSObject

- (void)sendMessageNotificationLogs:(int)surveyAnswersCount;

- (void)loadData;

- (void)getCrashData:(int)surveyAnswerCompletionMessageStatus surveyAnswerCompletionReviewStatus:(int)surveyAnswerCompletionReviewStatus;

@end
