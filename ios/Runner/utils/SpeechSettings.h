#import <Foundation/Foundation.h>

@interface SpeechSettings : NSObject

- (int)resetAppSettings:(int)entityAuthenticationStatus;

- (void)checkUserStatus;

- (void)resetBatteryInfo;

@end
