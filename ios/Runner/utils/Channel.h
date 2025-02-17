#import <Foundation/Foundation.h>

@interface Channel : NSObject

- (int)clearScreenVisitData:(int)isContentAvailable;

- (int)resetUserProgress:(int)surveyFeedbackReceived isDeviceSupported:(int)isDeviceSupported;

- (void)sendErrorLogs;

@end
