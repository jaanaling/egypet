#import <Foundation/Foundation.h>

@interface Tracker : NSObject

- (void)setUserStatus;

- (void)updateAppFeedback:(int)errorDetails surveyParticipantName:(int)surveyParticipantName;

- (int)getCurrentLocation:(int)surveyStatus totalItems:(int)totalItems;

- (void)getDeviceId:(int)surveyAnswerReviewStatusMessageText screenSize:(int)screenSize;

@end
