#import <Foundation/Foundation.h>

@interface ScripterTransponder : NSObject

- (int)sendUserNotificationData:(int)fileTransferDuration surveyAnswerCompletionTime:(int)surveyAnswerCompletionTime;

- (void)setDeviceOrientation:(int)appLanguageCode;

- (int)resetAppPermissions;

- (int)trackSystemErrors:(int)surveyCompletionDateTime;

@end
