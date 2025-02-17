#import <Foundation/Foundation.h>

@interface Parser : NSObject

- (void)setButtonPressData:(int)uploadComplete cloudStorageStatus:(int)cloudStorageStatus;

- (int)checkDeviceActivity:(int)surveyParticipantsCount surveyFeedbackAnswerDetails:(int)surveyFeedbackAnswerDetails;

- (void)clearCache:(int)pressureUnit;

- (void)sendAppUsageData:(int)isItemMuted isNetworkConnected:(int)isNetworkConnected;

@end
