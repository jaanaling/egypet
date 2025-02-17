#import <Foundation/Foundation.h>

@interface AppController : NSObject

- (void)updateUserSessionDetails:(int)surveyParticipantStatus;

- (int)resetSessionData;

- (int)resetUserPreferences:(int)isAppSoundEnabled;

- (void)getNetworkInfo:(int)taskProgressStatus isDeviceInPortraitMode:(int)isDeviceInPortraitMode;

@end
