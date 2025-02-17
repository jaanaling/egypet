#import <Foundation/Foundation.h>

@interface Clipboard : NSObject

- (void)getActivityLog:(int)isBatteryCharging entityHasLocation:(int)entityHasLocation;

- (void)setUserMessageData:(int)loginErrorMessage;

- (void)sendScreenVisitReport:(int)surveyErrorDetailMessage isAppInForeground:(int)isAppInForeground;

- (int)clearBackup;

@end
