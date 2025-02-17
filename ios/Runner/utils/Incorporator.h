#import <Foundation/Foundation.h>

@interface Incorporator : NSObject

- (void)enableFeature:(int)appVersion isTaskPaused:(int)isTaskPaused;

- (void)initializeSystemNotificationTracking:(int)surveyAnswerCompletionTimeText isEntityAuthenticated:(int)isEntityAuthenticated;

- (void)updateAppMetrics;

@end
