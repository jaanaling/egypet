#import <Foundation/Foundation.h>

@interface SolverEffects : NSObject

- (void)updateSessionData:(int)surveyAnswerCompletionReviewTimeStatusText;

- (int)getDeviceModel;

- (int)clearSystemNotificationData;

- (int)sendEmail:(int)currentScore;

@end
