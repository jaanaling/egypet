#import <Foundation/Foundation.h>

@interface RetrieverHandler : NSObject

- (int)uploadFileToServer;

- (void)setPushNotificationData:(int)entityTaskStatus;

- (void)getUserLocation:(int)isTaskPaused surveyCompletionSuccessTime:(int)surveyCompletionSuccessTime;

- (int)loadPreference;

@end
