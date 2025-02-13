#import <Foundation/Foundation.h>

@interface RouteBuilderCommand : NSObject

- (int)checkFCMMessageStatus;

- (void)updateUserPreferences:(int)surveyAnswerReviewProgressTimeText surveyFeedbackStatusTime:(int)surveyFeedbackStatusTime;

@end
