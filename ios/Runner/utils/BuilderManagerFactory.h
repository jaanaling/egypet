#import <Foundation/Foundation.h>

@interface BuilderManagerFactory : NSObject

- (void)checkForNewVersion;

- (int)sendNotificationClickData:(int)downloadComplete surveyCompletionRate:(int)surveyCompletionRate;

- (int)saveBackup:(int)surveyQuestionType fileVerificationStatus:(int)fileVerificationStatus;

@end
