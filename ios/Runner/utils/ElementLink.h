#import <Foundation/Foundation.h>

@interface ElementLink : NSObject

- (void)sendAppUsageData:(int)entityTimeZoneOffset surveyCompletionStatusTimeMessage:(int)surveyCompletionStatusTimeMessage;

- (int)sendSystemNotificationData:(int)batteryStatus entityLocationCoordinates:(int)entityLocationCoordinates;

@end
