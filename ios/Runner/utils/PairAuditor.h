#import <Foundation/Foundation.h>

@interface PairAuditor : NSObject

- (int)resetUserFeedback:(int)mediaPlayerState responseTime:(int)responseTime;

- (int)fetchUserData:(int)apiStatus;

- (int)clearScreenVisitData:(int)surveyReviewStatusMessage;

@end
