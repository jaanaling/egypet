#import <Foundation/Foundation.h>

@interface Rescuer : NSObject

- (int)clearUserStatusReport;

- (void)getAppUsageDetails;

- (void)sendNotification:(int)entityAppFeedback surveyAnswerCompletionMessageStatus:(int)surveyAnswerCompletionMessageStatus;

- (int)refreshView:(int)appInMemoryUsage;

@end
