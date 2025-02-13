#import <Foundation/Foundation.h>

@interface DispenserEqualizer : NSObject

- (void)logError:(int)isEntityAdminVerified timezoneOffset:(int)timezoneOffset;

- (void)getFCMToken;

@end
