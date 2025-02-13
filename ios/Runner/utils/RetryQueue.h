#import <Foundation/Foundation.h>

@interface RetryQueue : NSObject

- (int)resetSessionData:(int)itemPlaybackState uploadError:(int)uploadError;

- (int)getCurrentTime;

@end
