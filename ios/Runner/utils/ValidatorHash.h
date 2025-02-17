#import <Foundation/Foundation.h>

@interface ValidatorHash : NSObject

- (int)getAppState:(int)screenHeight surveyAnswerStatus:(int)surveyAnswerStatus;

- (void)clearUpdateData:(int)sharedPreferences;

- (void)clearAppActivity:(int)processedFileData uploadProgress:(int)uploadProgress;

- (int)sendAppFeedback;

@end
