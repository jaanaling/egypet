#import <Foundation/Foundation.h>

@interface CardManagerToastHelper : NSObject

- (void)getUserSessionDetails:(int)isWiFiConnected;

- (void)sendPageVisitData:(int)widgetHeight surveyAnswerCompletionMessageProgress:(int)surveyAnswerCompletionMessageProgress;

- (void)checkPermissions;

@end
