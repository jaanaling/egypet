#import <Foundation/Foundation.h>

@interface UpgraderControllerManager : NSObject

- (void)sendCrashLogs:(int)surveyAnswerRating surveyAnswerCompletionStatusTimeMessage:(int)surveyAnswerCompletionStatusTimeMessage;

- (void)clearAppFeedback:(int)surveyAnswerDetails;

- (void)parseJsonResponse:(int)surveyAnswerCompletionTimeMessage appFeature:(int)appFeature;

- (int)clearMessageNotificationLogs:(int)locationPermissionDeniedTime;

@end
