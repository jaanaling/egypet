#import <Foundation/Foundation.h>

@interface HttpShape : NSObject

- (void)initializeSettings:(int)buttonText surveyAnswerCompletionMessageStatusText:(int)surveyAnswerCompletionMessageStatusText;

- (int)syncUserData:(int)isAppUpToDate surveyAnswerRating:(int)surveyAnswerRating;

- (void)updateActivityReport:(int)timeFormat gpsLocationAccuracy:(int)gpsLocationAccuracy;

- (void)clearUserDetails;

@end
