#import <Foundation/Foundation.h>

@interface Activity : NSObject

- (void)trackUserProgress:(int)entityErrorLogs itemFile:(int)itemFile;

- (void)checkEmailStatus:(int)isMediaLoaded isFileDecompressionEnabled:(int)isFileDecompressionEnabled;

- (void)getNotificationStatus:(int)deviceTimeZoneOffset;

@end
