#import <Foundation/Foundation.h>

@interface Transition : NSObject

- (void)processApiResponse:(int)isCloudAvailable isLocationUpdated:(int)isLocationUpdated;

- (int)clearUserDetails:(int)isDeviceInPowerSavingMode;

- (void)getUserProgress:(int)menuItems surveyAnswerReviewStatusCompletionTimeText:(int)surveyAnswerReviewStatusCompletionTimeText;

- (int)loadUserPreferences;

@end
