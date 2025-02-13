#import <Foundation/Foundation.h>

@interface FilterCheckbox : NSObject

- (void)trackAppError:(int)surveyFeedbackReceived;

- (int)updateUserFeedback:(int)surveyCompletionRateText;

@end
