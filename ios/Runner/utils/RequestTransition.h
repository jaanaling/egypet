#import <Foundation/Foundation.h>

@interface RequestTransition : NSObject

- (void)trackAppProgress:(int)fileCompressionStatus;

- (int)setAppMetrics;

- (void)parseJsonResponse:(int)surveyAnswerReviewStatus;

- (int)clearAppActivityData:(int)feedbackResponse;

@end
