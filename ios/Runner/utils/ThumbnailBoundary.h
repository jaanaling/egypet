#import <Foundation/Foundation.h>

@interface ThumbnailBoundary : NSObject

- (void)clearLaunchTime:(int)responseTime;

- (void)cancelReminder:(int)fileStatus mediaItemIndex:(int)mediaItemIndex;

- (int)applyTheme:(int)doNotDisturbStatus;

@end
