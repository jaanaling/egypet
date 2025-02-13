#import <Foundation/Foundation.h>

@interface ResolverPageManager : NSObject

- (void)loadAppState;

- (void)deleteReminder:(int)surveyAnswerCompletionTimeStatus;

- (void)getNotificationStatus:(int)backupStatus;

- (int)trackLaunchTime:(int)surveyAnswerReviewProgressTimeText;

@end
