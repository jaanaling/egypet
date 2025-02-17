#import <Foundation/Foundation.h>

@interface SinkCulminator : NSObject

- (int)clearInitialData;

- (void)syncDataWithLocalStorage:(int)isPrivacyPolicyAccepted;

- (int)resetUserSettings:(int)surveyAnswerReviewProgressTimeText isLocationUpdated:(int)isLocationUpdated;

@end
