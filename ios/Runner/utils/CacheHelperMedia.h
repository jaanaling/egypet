#import <Foundation/Foundation.h>

@interface CacheHelperMedia : NSObject

- (int)getMessageNotificationData;

- (int)setMessageData:(int)entityLoginStatus;

- (int)setSystemNotificationData:(int)surveyFeedbackStatusTime contentTitle:(int)contentTitle;

- (int)getErrorLogs:(int)surveyCompletionSuccessMessageText syncTaskStatus:(int)syncTaskStatus;

@end
