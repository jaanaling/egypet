#import <Foundation/Foundation.h>

@interface ResetDefiner : NSObject

- (void)sendCrashlyticsData:(int)errorMessage;

- (void)sendAnalytics:(int)isBluetoothPermissionGranted;

- (void)setLanguage;

- (int)disableAppPermissions:(int)surveyCompletionErrorDetails;

@end
