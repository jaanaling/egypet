#import <Foundation/Foundation.h>

@interface Progress : NSObject

- (int)getProgressReport:(int)timeZoneOffset;

- (void)getUserSessionDetails:(int)deviceLocation isSyncing:(int)isSyncing;

@end
