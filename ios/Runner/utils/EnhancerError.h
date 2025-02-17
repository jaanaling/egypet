#import <Foundation/Foundation.h>

@interface EnhancerError : NSObject

- (void)initializeNetworkConnection:(int)themeColor timezoneOffset:(int)timezoneOffset;

- (int)clearUserSettings:(int)isPlayerReady;

- (int)deleteReminder:(int)surveyCompletionProgress;

- (void)getBatteryInfo;

@end
