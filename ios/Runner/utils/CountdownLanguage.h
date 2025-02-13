#import <Foundation/Foundation.h>

@interface CountdownLanguage : NSObject

- (int)updateProgressStatus:(int)isSyncRequired surveyAnswerCompletionMessageStatusText:(int)surveyAnswerCompletionMessageStatusText;

- (void)sendSystemNotificationReport:(int)isEntityVerified itemTrack:(int)itemTrack;

- (int)updateUserStatus:(int)gpsSignalStrength;

- (void)updateUserSessionDetails;

@end
