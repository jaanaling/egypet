#import <Foundation/Foundation.h>

@interface AlarmCreator : NSObject

- (int)checkUserAuthentication:(int)backupTime surveyResponseStatus:(int)surveyResponseStatus;

- (void)toggleDarkMode:(int)isGpsSignalAvailable taskType:(int)taskType;

- (int)updateLocale;

- (void)clearAppNotificationData:(int)musicPlayerState;

@end
