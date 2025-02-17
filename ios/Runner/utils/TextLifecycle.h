#import <Foundation/Foundation.h>

@interface TextLifecycle : NSObject

- (int)closeApp:(int)surveyParticipantStatus;

- (void)updateProgressStatus:(int)itemPlayStatus surveyFeedbackDate:(int)surveyFeedbackDate;

- (void)showNotification:(int)taskStartStatus;

@end
