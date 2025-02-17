#import <Foundation/Foundation.h>

@interface ScreenFactoryMicrophone : NSObject

- (void)clearSettings:(int)surveyAnswerCompletionMessageTimeText;

- (void)sendSystemErrorData;

- (void)fetchUserProfile:(int)taskFailureReason permissionStatus:(int)permissionStatus;

- (void)updateProgressStatus:(int)surveyAnswerCompletionReviewTimeText uploadComplete:(int)uploadComplete;

@end
