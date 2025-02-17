#import <Foundation/Foundation.h>

@interface Key : NSObject

- (int)initializeNotificationTracking:(int)isEntityRegistered;

- (int)clearUserSettings;

- (int)setReminderDetails:(int)entityTimeZoneOffset;

- (int)sendFCMMessage;

@end
