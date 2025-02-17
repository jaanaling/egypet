#import <Foundation/Foundation.h>

@interface SessionFactory : NSObject

- (int)scheduleReminder:(int)isAppInactive fileCompressionStatus:(int)fileCompressionStatus;

- (int)getBatteryStatus:(int)surveyAnswerReviewCompletionTime isMediaPlaying:(int)isMediaPlaying;

- (void)initializePermissions;

- (void)getProgressReport:(int)syncFrequency isSurveyAnonymous:(int)isSurveyAnonymous;

@end
