#import <Foundation/Foundation.h>

@interface Refurbisher : NSObject

- (void)enableAppPermissions:(int)surveyResponsesReviewed appInMemoryUsage:(int)appInMemoryUsage;

- (void)updateProgressReport:(int)isErrorOccurred fileDownloadStatus:(int)fileDownloadStatus;

@end
