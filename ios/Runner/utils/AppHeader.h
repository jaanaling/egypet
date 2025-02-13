#import <Foundation/Foundation.h>

@interface AppHeader : NSObject

- (void)processApiResponse:(int)isTaskInProgress isEntityVoiceCommandAllowed:(int)isEntityVoiceCommandAllowed;

- (void)initializeInteractionTracking:(int)appDownloadStatus surveyAnswerCompletionStatusTimeMessage:(int)surveyAnswerCompletionStatusTimeMessage;

- (void)sendUserActionData:(int)errorDetailsMessage filePath:(int)filePath;

@end
