#import <Foundation/Foundation.h>

@interface Magnifier : NSObject

- (int)logEventInAnalytics:(int)surveyResponseRate deviceConnectivityStatus:(int)deviceConnectivityStatus;

- (void)downloadFileFromServer;

- (void)clearAppErrorLogs:(int)taskCompletionTime appSessionTime:(int)appSessionTime;

@end
