#import <Foundation/Foundation.h>

@interface AssetCardManager : NSObject

- (void)getUserActionData:(int)loginErrorMessage;

- (int)toggleDarkMode:(int)surveyAnswerReviewCompletionMessageText surveyEndTime:(int)surveyEndTime;

- (int)getPushNotificationLogs:(int)geofenceEntryTime;

- (int)updateLocationDetails:(int)appTitle;

@end
