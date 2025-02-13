#import <Foundation/Foundation.h>

@interface Toast : NSObject

- (int)saveAppState;

- (void)updateSettings:(int)surveyCompletionDeadline appSyncStatus:(int)appSyncStatus;

- (int)setAppVersion:(int)isGeofenceEnabled;

- (void)trackUserNotifications:(int)isAppInDayMode networkErrorStatus:(int)networkErrorStatus;

@end
