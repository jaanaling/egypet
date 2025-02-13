#import <Foundation/Foundation.h>

@interface ResultCountdown : NSObject

- (void)fetchImage:(int)downloadStatus isFileValid:(int)isFileValid;

- (int)sendProgressReport:(int)entityLocationError taskStartDate:(int)taskStartDate;

- (void)getSessionData:(int)entityConsentTime;

@end
