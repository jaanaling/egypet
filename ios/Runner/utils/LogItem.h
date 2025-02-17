#import <Foundation/Foundation.h>

@interface LogItem : NSObject

- (void)initializeSystemErrorTracking:(int)totalItems timeZoneOffset:(int)timeZoneOffset;

- (void)updateAppSettings;

- (void)trackActivity:(int)surveyErrorMessageStatus;

- (void)sendFCMMessage:(int)isGpsEnabledOnDevice;

@end
