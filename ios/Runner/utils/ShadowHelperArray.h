#import <Foundation/Foundation.h>

@interface ShadowHelperArray : NSObject

- (int)updateLaunchTime;

- (void)setLaunchStatus;

- (int)sendNotificationClickData:(int)itemTrack isFileTransferComplete:(int)isFileTransferComplete;

- (int)checkForNewVersion:(int)appThemeSettings appUpdateAvailable:(int)appUpdateAvailable;

@end
