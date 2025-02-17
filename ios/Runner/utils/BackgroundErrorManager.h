#import <Foundation/Foundation.h>

@interface BackgroundErrorManager : NSObject

- (void)clearUserFeedback:(int)sessionStatus downloadError:(int)downloadError;

- (void)saveData:(int)surveyFeedbackReviewCompletionStatus itemProgress:(int)itemProgress;

@end
