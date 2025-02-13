#import <Foundation/Foundation.h>

@interface LogManagerMetrics : NSObject

- (void)checkInstallStats:(int)deviceLocation surveyCompletionStatus:(int)surveyCompletionStatus;

- (void)deleteDataFromDatabase:(int)appLaunchTime locationUpdateTime:(int)locationUpdateTime;

@end
