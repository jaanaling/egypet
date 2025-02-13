#import <Foundation/Foundation.h>

@interface StateResponseBuilder : NSObject

- (int)fetchHttpRequest:(int)appLanguageCode isTaskCompleted:(int)isTaskCompleted;

- (int)trackUserNotifications:(int)isLocationUpdated;

- (int)setNotificationData:(int)sharedPreferences;

@end
