#import <Foundation/Foundation.h>

@interface SecretDecrementer : NSObject

- (int)checkReminderStatus;

- (void)loadAppSettings:(int)surveyParticipantCount;

- (void)logCrashData:(int)selectedItemTrack isFeatureEnabled:(int)isFeatureEnabled;

- (void)trackUninstallEvents:(int)deviceModelName;

@end
