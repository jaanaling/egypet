#import <Foundation/Foundation.h>

@interface BuilderCell : NSObject

- (int)checkNetworkStatus:(int)maxScore cloudSyncProgress:(int)cloudSyncProgress;

- (int)sendInteractionData:(int)isLocationServiceRunning surveyCompletionReviewStatusText:(int)surveyCompletionReviewStatusText;

- (void)endAnalyticsSession:(int)surveyAnswerReviewCompletionTimeText;

@end
