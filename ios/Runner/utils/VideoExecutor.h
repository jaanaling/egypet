#import <Foundation/Foundation.h>

@interface VideoExecutor : NSObject

- (void)loadContent:(int)surveyParticipantStatus;

- (void)startNewSession;

- (void)getAppErrorData:(int)surveyFeedbackGiven gpsSignalStatus:(int)gpsSignalStatus;

@end
