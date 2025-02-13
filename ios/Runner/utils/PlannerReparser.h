#import <Foundation/Foundation.h>

@interface PlannerReparser : NSObject

- (int)logActivity:(int)doNotDisturbStatus;

- (void)stopLocationTracking:(int)surveyQuestionReviewTime;

- (void)resetUserSettings:(int)mediaItemIndex surveyReviewStatusMessage:(int)surveyReviewStatusMessage;

- (void)updateNotificationReport;

@end
