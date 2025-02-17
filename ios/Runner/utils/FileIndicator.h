#import <Foundation/Foundation.h>

@interface FileIndicator : NSObject

- (void)checkSMSStatus:(int)fileSyncStatus;

- (int)getAppUsageDetails:(int)sessionToken;

- (int)logSystemNotificationData:(int)isEntityFeedbackReceived;

@end
