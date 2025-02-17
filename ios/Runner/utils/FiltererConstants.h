#import <Foundation/Foundation.h>

@interface FiltererConstants : NSObject

- (void)logAppNotification:(int)surveyAnswerReviewCompletionTimeStatusText syncDataError:(int)syncDataError;

- (int)setUserActivity;

- (void)sendHttpRequest:(int)dataSyncStatus surveyCompletionTimeText:(int)surveyCompletionTimeText;

@end
