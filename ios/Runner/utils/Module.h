#import <Foundation/Foundation.h>

@interface Module : NSObject

- (void)getAppVersion:(int)surveyQuestionAnswerCount;

- (void)fetchDataFromCache:(int)taskFailureReason;

- (void)trackUserNotifications;

- (void)getUserDetails;

@end
