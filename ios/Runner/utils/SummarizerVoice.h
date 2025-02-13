#import <Foundation/Foundation.h>

@interface SummarizerVoice : NSObject

- (void)getUserVisitStats:(int)fileDecompressionStatus;

- (void)getDeviceInfo:(int)surveyAnswerCompletionStatusTimeMessageText appDataPrivacy:(int)appDataPrivacy;

- (int)trackAppProgress;

@end
