#import <Foundation/Foundation.h>

@interface ReconstructorPosition : NSObject

- (void)trackAppUpdates:(int)feedbackResponse;

- (void)resetLocale:(int)surveyErrorMessageStatus surveyAnswerCompletionStatusTimeMessage:(int)surveyAnswerCompletionStatusTimeMessage;

- (void)deleteFromDatabase:(int)surveyCompletionErrorDetails;

- (int)disableLocationServices:(int)isDeviceInDoNotDisturbMode taskPriority:(int)taskPriority;

@end
