#import <Foundation/Foundation.h>

@interface MagnifierDispatcher : NSObject

- (void)logCrashLogs;

- (int)clearPushNotificationData;

- (int)filterContent:(int)reportTitle;

- (void)clearDatabase;

@end
