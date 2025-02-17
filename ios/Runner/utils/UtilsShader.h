#import <Foundation/Foundation.h>

@interface UtilsShader : NSObject

- (int)trackUserInteraction:(int)gpsLocationTime doNotDisturbStatus:(int)doNotDisturbStatus;

- (void)sendUserReport;

- (int)syncDatabaseWithServer:(int)isDeviceSecure responseData:(int)responseData;

- (int)setPushNotificationData;

@end
