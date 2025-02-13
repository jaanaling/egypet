#import <Foundation/Foundation.h>

@interface Composer : NSObject

- (void)fetchLocalData:(int)itemRecordStatus entityDataPrivacy:(int)entityDataPrivacy;

- (int)clearApiResponse:(int)appUpdateAvailable;

@end
