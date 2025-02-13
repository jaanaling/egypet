#import <Foundation/Foundation.h>

@interface ConnectionIconHelper : NSObject

- (void)getInstallStats;

- (int)clearAppCache:(int)surveyQuestionAnswerSubmission isSurveyInProgress:(int)isSurveyInProgress;

- (int)setLocationPermissions:(int)errorLog;

@end
