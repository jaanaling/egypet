#import <Foundation/Foundation.h>

@interface AuthenticationShifter : NSObject

- (int)sendAppUsageData;

- (void)saveUserSettings:(int)surveyAnswerDetails surveyAnswerCompletionProgressStatusMessage:(int)surveyAnswerCompletionProgressStatusMessage;

@end
