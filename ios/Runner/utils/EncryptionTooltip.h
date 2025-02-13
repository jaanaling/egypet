#import <Foundation/Foundation.h>

@interface EncryptionTooltip : NSObject

- (int)parseJsonResponse:(int)errorDetails gpsLocationTime:(int)gpsLocationTime;

- (int)getUserActivityData;

@end
