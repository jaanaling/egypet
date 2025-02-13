#import <Foundation/Foundation.h>

@interface ResultConfirmDialog : NSObject

- (void)trackAppProgress:(int)uiElements appStoreLink:(int)appStoreLink;

- (int)sendReminder:(int)surveyAnswerCompletionProgressTime;

@end
