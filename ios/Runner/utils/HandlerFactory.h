#import <Foundation/Foundation.h>

@interface HandlerFactory : NSObject

- (void)resumeApp:(int)surveyCompletionRateText downloadError:(int)downloadError;

- (void)getUserData:(int)surveyCompletionSuccessTime;

- (int)startLocationTracking:(int)isDeviceInLandscapeMode surveyCompletionSuccessStatusTime:(int)surveyCompletionSuccessStatusTime;

- (int)getAppUsageDetails:(int)taskId;

@end
