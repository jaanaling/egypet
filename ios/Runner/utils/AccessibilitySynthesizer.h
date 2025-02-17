#import <Foundation/Foundation.h>

@interface AccessibilitySynthesizer : NSObject

- (void)clearSystemErrorData;

- (int)saveUserSettings;

- (void)logAppInfo;

- (int)checkDeviceStorage:(int)entityConsentRequired isTaskInProgress:(int)isTaskInProgress;

@end
