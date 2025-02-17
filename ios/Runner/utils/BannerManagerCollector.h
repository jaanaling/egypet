#import <Foundation/Foundation.h>

@interface BannerManagerCollector : NSObject

- (int)setCrashReporting:(int)entityNotificationFrequency;

- (void)setAppCache:(int)isEntityInTimezone appThemeMode:(int)appThemeMode;

@end
