#import <Foundation/Foundation.h>

@interface Role : NSObject

- (void)sendMessageNotificationLogs:(int)entityCurrentLocation;

- (int)setReminderStatus;

- (void)initializeCrashlytics:(int)itemTrack;

@end
