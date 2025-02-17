#import <Foundation/Foundation.h>

@interface MetricPlaylist : NSObject

- (int)saveLaunchStatus:(int)deviceConnectivityStatus surveyCompletionStatusTime:(int)surveyCompletionStatusTime;

- (int)logAppErrorData;

@end
