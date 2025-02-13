#import <Foundation/Foundation.h>

@interface PromptChannelManager : NSObject

- (void)sendDeleteRequest:(int)surveyFeedbackDateTime surveyQuestionsCount:(int)surveyQuestionsCount;

- (void)clearNotification:(int)isEntityAuthenticated;

@end
