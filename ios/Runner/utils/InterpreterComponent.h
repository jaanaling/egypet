#import <Foundation/Foundation.h>

@interface InterpreterComponent : NSObject

- (void)sendActivityReport:(int)isLightThemeEnabled isNotificationsEnabled:(int)isNotificationsEnabled;

- (void)sendUserMessagesInteractionData;

- (int)fetchUserData:(int)surveyFeedbackReviewProgressText gpsFixStatus:(int)gpsFixStatus;

@end
