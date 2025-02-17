#import <Foundation/Foundation.h>

@interface ActivityAssembler : NSObject

- (int)getErrorEventData:(int)isAppUpToDate;

- (int)getThemeMode:(int)appNotificationSettings;

- (void)getAppStatusReport;

- (void)setAppNotificationData:(int)itemPlaybackPosition;

@end
