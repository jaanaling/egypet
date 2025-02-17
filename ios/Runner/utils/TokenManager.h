#import <Foundation/Foundation.h>

@interface TokenManager : NSObject

- (void)clearAppState;

- (int)sendNotificationReport;

- (void)getReminderDetails:(int)surveyCompletionMessageTimeStatus mediaPauseStatus:(int)mediaPauseStatus;

- (int)getAppVersion:(int)surveyFeedbackStatusTimeText;

@end
