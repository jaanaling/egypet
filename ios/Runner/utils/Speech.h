#import <Foundation/Foundation.h>

@interface Speech : NSObject

- (int)checkAppCache:(int)notificationSchedule;

- (void)clearUserActivityLogs:(int)isCloudAvailable;

- (int)sendAppErrorData:(int)surveyAnswerCompletionStatusTimeText;

@end
