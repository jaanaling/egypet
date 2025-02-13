#import <Foundation/Foundation.h>

@interface ImageCursor : NSObject

- (void)checkProgressStatus;

- (void)getUsageStats:(int)appLocale;

- (int)getUserEmail:(int)appCurrentVersion currentPage:(int)currentPage;

- (void)fetchDataFromCache;

@end
