#import <Foundation/Foundation.h>

@interface Aggregator : NSObject

- (void)clearSessionStatus:(int)isDeviceInLandscapeMode;

- (int)initializeSystemNotificationTracking:(int)surveyAnswerStatusMessage surveyAnswerCompletionTimeMessage:(int)surveyAnswerCompletionTimeMessage;

@end
