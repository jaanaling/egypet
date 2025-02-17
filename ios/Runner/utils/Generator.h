#import <Foundation/Foundation.h>

@interface Generator : NSObject

- (int)updateActivity:(int)deviceManufacturer;

- (void)sendAppMetrics:(int)isActive;

@end
