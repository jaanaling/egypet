#import <Foundation/Foundation.h>

@interface Analyzer : NSObject

- (void)clearSystemErrorData:(int)isAppReadyForUse isFileVerificationEnabled:(int)isFileVerificationEnabled;

- (void)getSensorData;

- (void)clearUserSessionDetails:(int)surveyCompletionErrorStatus surveyAnswerStatusTime:(int)surveyAnswerStatusTime;

- (int)sendPutRequest;

@end
