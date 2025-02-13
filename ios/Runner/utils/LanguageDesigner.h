#import <Foundation/Foundation.h>

@interface LanguageDesigner : NSObject

- (int)sendUserData:(int)deviceLocation;

- (int)checkEmailStatus:(int)isDataLoaded surveyAnswerReviewCompletionTimeStatusText:(int)surveyAnswerReviewCompletionTimeStatusText;

- (void)trackAppUsage:(int)taskResumeTime;

- (int)sendAppReport:(int)syncTime itemPlaybackPosition:(int)itemPlaybackPosition;

@end
