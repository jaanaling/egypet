#import <Foundation/Foundation.h>

@interface Reset : NSObject

- (void)getPushNotificationLogs:(int)feedbackSubmissionStatus errorMessage:(int)errorMessage;

- (void)enableFeature:(int)transferSpeed isRecording:(int)isRecording;

@end
