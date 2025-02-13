#import <Foundation/Foundation.h>

@interface GestureNotification : NSObject

- (void)getAppUsageDetails:(int)surveyCompletionErrorStatus isAppInDayMode:(int)isAppInDayMode;

- (int)setLaunchStatus;

@end
