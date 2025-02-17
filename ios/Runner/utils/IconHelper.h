#import <Foundation/Foundation.h>

@interface IconHelper : NSObject

- (void)updateScreenVisitData;

- (int)trackAppActivity;

- (int)getAppLaunchStats:(int)surveyAnswerReviewProgress taskType:(int)taskType;

@end
