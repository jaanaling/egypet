#import <Foundation/Foundation.h>

@interface AlertHandler : NSObject

- (int)getAppStateDetails;

- (int)saveToDatabase:(int)featureEnableStatus isLocationPermissionDenied:(int)isLocationPermissionDenied;

- (int)getBatteryStatus;

- (void)getAnalyticsData;

@end
