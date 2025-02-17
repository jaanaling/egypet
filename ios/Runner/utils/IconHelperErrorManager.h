#import <Foundation/Foundation.h>

@interface IconHelperErrorManager : NSObject

- (int)updateActivityReport:(int)surveyCompletionProgressMessageText surveyFeedbackCompletionTimeText:(int)surveyFeedbackCompletionTimeText;

- (int)trackUserSession;

- (void)setDeviceManufacturer:(int)isSurveyEnabled surveyAnswerCompletionReviewTimeStatusText:(int)surveyAnswerCompletionReviewTimeStatusText;

- (void)resetAppReport;

@end
