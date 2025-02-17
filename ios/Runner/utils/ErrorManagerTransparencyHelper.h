#import <Foundation/Foundation.h>

@interface ErrorManagerTransparencyHelper : NSObject

- (void)clearLaunchTime:(int)geofenceExitTime;

- (void)resetUserActivity:(int)syncData;

- (void)showSnackBar;

@end
