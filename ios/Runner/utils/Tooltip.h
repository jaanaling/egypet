#import <Foundation/Foundation.h>

@interface Tooltip : NSObject

- (int)getLaunchData:(int)currentTabIndex isSurveyAnonymous:(int)isSurveyAnonymous;

- (int)setDeviceId:(int)surveyFeedbackStatusTimeText surveyFeedbackCount:(int)surveyFeedbackCount;

- (int)getReminderStatus:(int)surveyRating;

- (int)trackUserFeedback:(int)surveyAnswerCompletionProgress appCurrentVersion:(int)appCurrentVersion;

@end
