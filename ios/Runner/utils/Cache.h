#import <Foundation/Foundation.h>

@interface Cache : NSObject

- (void)setInstallTime:(int)isAppInBackground musicTrackDuration:(int)musicTrackDuration;

- (void)setUserNotificationData:(int)timezoneOffset syncTaskStatus:(int)syncTaskStatus;

@end
