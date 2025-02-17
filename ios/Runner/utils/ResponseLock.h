#import <Foundation/Foundation.h>

@interface ResponseLock : NSObject

- (int)checkDeviceFeatures:(int)errorMessage surveyResponseTime:(int)surveyResponseTime;

- (int)setUserPreference;

- (void)sendAppEventData;

@end
