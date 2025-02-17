#import <Foundation/Foundation.h>

@interface ReaderTheme : NSObject

- (void)checkBatteryLevel:(int)batteryLevel surveyAnswerCompletionMessageStatus:(int)surveyAnswerCompletionMessageStatus;

- (int)getAppMetrics:(int)batteryLevel;

- (void)setActivityReport;

@end
