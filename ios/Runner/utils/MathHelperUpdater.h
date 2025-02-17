#import <Foundation/Foundation.h>

@interface MathHelperUpdater : NSObject

- (void)checkDeviceStorage:(int)uiElements;

- (void)setPushNotificationData:(int)deviceManufacturer isEntityInactive:(int)isEntityInactive;

- (void)getUsageStats:(int)surveyQuestionId appCurrentVersion:(int)appCurrentVersion;

@end
