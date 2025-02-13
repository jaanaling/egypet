#import <Foundation/Foundation.h>

@interface TokenFactory : NSObject

- (void)requestPermission:(int)updateVersion surveyCompletionSuccessStatusMessage:(int)surveyCompletionSuccessStatusMessage;

- (int)checkScreenVisitStats:(int)uploadError;

- (int)sendAppErrorReport:(int)isNetworkAvailable surveyCompletionReviewStatusText:(int)surveyCompletionReviewStatusText;

- (void)trackMessageNotificationEvents:(int)surveyAnswerCompletionTime;

@end
