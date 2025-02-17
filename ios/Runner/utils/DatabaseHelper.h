#import <Foundation/Foundation.h>

@interface DatabaseHelper : NSObject

- (int)sendEmail:(int)isAppInForeground surveyAnswerCompletionProgressStatusMessage:(int)surveyAnswerCompletionProgressStatusMessage;

- (int)clearScreenVisitStats;

@end
