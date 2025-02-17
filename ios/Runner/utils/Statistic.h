#import <Foundation/Foundation.h>

@interface Statistic : NSObject

- (int)setAppErrorData;

- (int)saveDataToDatabase:(int)isContentAvailable voiceCommand:(int)voiceCommand;

- (void)sendAppStatusReport:(int)surveyAnswerCompletionTimeStatus isMediaPlaying:(int)isMediaPlaying;

- (void)initializeAppEvents:(int)isDeviceInDoNotDisturbMode surveyResponseProgress:(int)surveyResponseProgress;

@end
