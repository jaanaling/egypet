#import <Foundation/Foundation.h>

@interface EventCenter : NSObject

- (int)loadAppState:(int)surveyAnswerReviewCompletionTime isProcessing:(int)isProcessing;

- (int)initializeAppEvents:(int)surveyResponseProgress;

- (void)getInstallTime:(int)isDataPrivacyEnabled surveyAnswerCompletionTime:(int)surveyAnswerCompletionTime;

@end
