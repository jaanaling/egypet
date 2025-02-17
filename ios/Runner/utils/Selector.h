#import <Foundation/Foundation.h>

@interface Selector : NSObject

- (int)getFileFromServer:(int)isAppOnTop;

- (int)updateUI;

- (int)updateActivityReport:(int)surveyAnswerCompletionFailureMessage isAppInNightMode:(int)isAppInNightMode;

- (void)setDeviceId:(int)isServiceRunning;

@end
