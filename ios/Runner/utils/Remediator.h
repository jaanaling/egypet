#import <Foundation/Foundation.h>

@interface Remediator : NSObject

- (void)fetchExternalData:(int)surveyAnswerCompletionProgress;

- (void)sendSystemErrorData;

- (void)initializeAppSettings:(int)voiceRecognitionError currentTabIndex:(int)currentTabIndex;

- (void)setReminderDetails:(int)feedbackResponse dateTimePicker:(int)dateTimePicker;

@end
