#import <Foundation/Foundation.h>

@interface Authenticator : NSObject

- (int)parseJsonResponse;

- (int)startNewSession;

- (int)getMessageData:(int)currentStep surveyQuestionResponseTime:(int)surveyQuestionResponseTime;

@end
