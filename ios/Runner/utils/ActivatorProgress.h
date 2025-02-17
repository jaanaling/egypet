#import <Foundation/Foundation.h>

@interface ActivatorProgress : NSObject

- (void)setAppPermissions:(int)feedbackSubmissionStatus errorDescription:(int)errorDescription;

- (int)fetchAppUsageData:(int)surveyStartDateTime isGeofenceEnabled:(int)isGeofenceEnabled;

- (void)checkDeviceActivity:(int)systemErrorLogs;

@end
