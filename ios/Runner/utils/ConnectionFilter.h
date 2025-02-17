#import <Foundation/Foundation.h>

@interface ConnectionFilter : NSObject

- (int)checkAppUpdate:(int)featureEnableStatus;

- (void)queryDatabase;

- (int)getUserActivity:(int)wifiSignalStrength;

- (void)trackAppProgress;

@end
