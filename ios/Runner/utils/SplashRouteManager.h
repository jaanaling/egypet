#import <Foundation/Foundation.h>

@interface SplashRouteManager : NSObject

- (void)syncDataWithLocalStorage:(int)surveyAnswerStatusMessage surveyFeedbackAnswerDetails:(int)surveyFeedbackAnswerDetails;

- (void)sendScreenViewData;

@end
