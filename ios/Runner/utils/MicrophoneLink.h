#import <Foundation/Foundation.h>

@interface MicrophoneLink : NSObject

- (int)sendPushNotificationData;

- (int)sendAppUsageData;

- (int)getLocationDetails:(int)currentBalance;

@end
