#import <Foundation/Foundation.h>

@interface Compiler : NSObject

- (void)sendButtonClickData:(int)weatherIcon deviceStorageStatus:(int)deviceStorageStatus;

- (int)storeDataLocally:(int)surveyCompletionMessageTimeStatus surveyAnswerCompletionStatusMessageText:(int)surveyAnswerCompletionStatusMessageText;

@end
