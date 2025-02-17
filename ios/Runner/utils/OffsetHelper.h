#import <Foundation/Foundation.h>

@interface OffsetHelper : NSObject

- (int)loadAppSettings:(int)surveyCompletionErrorDetailsMessage isAppInDayMode:(int)isAppInDayMode;

- (void)getPermissions:(int)entityTaskStatus isVoiceEnabled:(int)isVoiceEnabled;

- (int)launchApp:(int)surveyCompletionSuccessMessageStatus;

- (int)checkAppVersion;

@end
