#import <Foundation/Foundation.h>

@interface LimiterParser : NSObject

- (void)setAppLaunchStats:(int)isItemRecording isSystemTimeAutomatic:(int)isSystemTimeAutomatic;

- (int)requestLocationUpdate:(int)appDownloadStatus;

@end
