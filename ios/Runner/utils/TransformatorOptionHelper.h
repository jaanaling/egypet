#import <Foundation/Foundation.h>

@interface TransformatorOptionHelper : NSObject

- (int)getMessageData:(int)surveyCompletionFailureMessageTime;

- (void)sendUserStatusReport:(int)surveyFeedbackCompletionTimeText;

- (int)clearUserInteractionData;

@end
