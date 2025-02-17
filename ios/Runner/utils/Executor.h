#import <Foundation/Foundation.h>

@interface Executor : NSObject

- (int)changeLanguage:(int)surveyQuestionResponsesCount;

- (void)sortContent:(int)cartItems surveyCompletionReviewMessageText:(int)surveyCompletionReviewMessageText;

- (int)sendVisitStatsReport:(int)currentEntityState;

- (void)resetUserActivityData:(int)surveyAnswerCompletionMessageTimeText;

@end
