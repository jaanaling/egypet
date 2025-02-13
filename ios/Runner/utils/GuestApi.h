#import <Foundation/Foundation.h>

@interface GuestApi : NSObject

- (int)getSensorData:(int)uploadComplete;

- (void)saveAppActivity;

- (int)checkAppVersion:(int)taskFailureReason surveyReviewStatusMessage:(int)surveyReviewStatusMessage;

@end
