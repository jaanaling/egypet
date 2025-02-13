#import <Foundation/Foundation.h>

@interface EnhancerLogManager : NSObject

- (int)setUserNotificationData;

- (int)initializeAppVersionTracking;

- (void)getUserActionData:(int)isAdminAuthenticated isRecordingInProgress:(int)isRecordingInProgress;

@end
