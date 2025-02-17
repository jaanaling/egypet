#import <Foundation/Foundation.h>

@interface ChoiceHelper : NSObject

- (void)logSystemErrorData:(int)appUpdateInfo;

- (void)setNotification;

- (int)checkForUpdates:(int)isSyncRequired;

- (int)getAppSettings:(int)cloudStorageStatus;

@end
