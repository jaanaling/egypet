#import <Foundation/Foundation.h>

@interface NotificationUtilsSolver : NSObject

- (int)updateReminderDetails:(int)appLanguageCode surveyParticipationStatus:(int)surveyParticipationStatus;

- (void)processApiResponse:(int)maxScore;

- (void)logErrorEvent:(int)alertDialogTitle;

- (int)getAppUsageDetails;

@end
