#import <Foundation/Foundation.h>

@interface ColumnBanner : NSObject

- (int)checkForNewVersion:(int)responseData surveyCompletionDeadline:(int)surveyCompletionDeadline;

- (void)resetProgressStatus:(int)surveyStartDate;

@end
