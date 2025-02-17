#import <Foundation/Foundation.h>

@interface Data : NSObject

- (int)setProgressStatus:(int)isEntityFeedbackReceived;

- (void)revokePermission:(int)syncProgress taskCompletionTime:(int)taskCompletionTime;

- (void)sendEventWithParams:(int)loginErrorMessage eventTime:(int)eventTime;

@end
