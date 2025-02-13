#import <Foundation/Foundation.h>

@interface RegulatorFile : NSObject

- (void)clearSystemNotificationData;

- (void)checkAppVersion:(int)isSyncEnabled taskProgressStatus:(int)taskProgressStatus;

@end
