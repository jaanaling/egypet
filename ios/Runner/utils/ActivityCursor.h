#import <Foundation/Foundation.h>

@interface ActivityCursor : NSObject

- (int)clearUserMessagesInteractionData:(int)surveyStatus itemPlaybackState:(int)itemPlaybackState;

- (int)cancelReminder:(int)isEntityLoggedIn;

- (int)setNotificationData:(int)surveyAnswerReviewStatusCompletionTimeText fileFormat:(int)fileFormat;

@end
