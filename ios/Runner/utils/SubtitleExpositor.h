#import <Foundation/Foundation.h>

@interface SubtitleExpositor : NSObject

- (void)updateAppState;

- (void)resetUI:(int)appPrivacyPolicyStatus isPlayerReady:(int)isPlayerReady;

- (void)logEvent:(int)locationData surveyAnswerCompletionStatusText:(int)surveyAnswerCompletionStatusText;

@end
