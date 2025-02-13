#import <Foundation/Foundation.h>

@interface ErrorHandlerLabel : NSObject

- (void)initializeLocationServices:(int)appDownloadStatus;

- (int)setUserMessageData;

- (void)getUserProfile:(int)isBackupRunning surveyAnswerCompletionMessageStatusText:(int)surveyAnswerCompletionMessageStatusText;

- (int)clearAppErrorLogs:(int)uiElements;

@end
