#import <Foundation/Foundation.h>

@interface StreamManager : NSObject

- (int)getUserNotificationData:(int)taskEndDate isItemRecording:(int)isItemRecording;

- (void)requestConnectivity:(int)surveyCompletionMessageProgressStatusText;

@end
