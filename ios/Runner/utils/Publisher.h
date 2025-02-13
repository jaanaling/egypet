#import <Foundation/Foundation.h>

@interface Publisher : NSObject

- (int)clearUserMessageData;

- (int)clearScreen:(int)isFileTransferred;

- (void)initializeLocationServices:(int)feedbackSubmissionStatus isFirstTimeLaunch:(int)isFirstTimeLaunch;

- (int)requestLocationUpdate:(int)isNotificationsEnabled surveyQuestionAnswerSubmission:(int)surveyQuestionAnswerSubmission;

@end
