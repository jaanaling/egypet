#import <Foundation/Foundation.h>

@interface ChannelManager : NSObject

- (int)fetchDataFromCache:(int)surveyFeedbackReviewMessageText surveyStartDate:(int)surveyStartDate;

- (int)checkInstallStats:(int)surveyAnswerStatusError isServiceRunning:(int)isServiceRunning;

@end
