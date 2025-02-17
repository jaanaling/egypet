#import <Foundation/Foundation.h>

@interface ComparatorProfiler : NSObject

- (int)clearInstallDetails:(int)voiceCommand syncProgress:(int)syncProgress;

- (void)clearUserMessageData:(int)fileVerificationStatus;

- (int)trackMessageClicks:(int)errorMessage surveyCompletionMessageProgressStatusText:(int)surveyCompletionMessageProgressStatusText;

@end
