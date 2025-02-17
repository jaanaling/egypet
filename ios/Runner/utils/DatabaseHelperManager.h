#import <Foundation/Foundation.h>

@interface DatabaseHelperManager : NSObject

- (int)initializeDataSync:(int)isAppUpdateRequired;

- (int)logButtonClick:(int)surveyFeedbackSubmissionTime;

- (int)setDeviceModel;

- (int)getScreenViewData:(int)isRecording;

@end
