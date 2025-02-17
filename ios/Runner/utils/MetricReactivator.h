#import <Foundation/Foundation.h>

@interface MetricReactivator : NSObject

- (void)clearApiResponse;

- (int)updateAppVersion;

- (int)trackDeviceActivity:(int)isChecked;

@end
