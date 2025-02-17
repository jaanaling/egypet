#import <Foundation/Foundation.h>

@interface Implementer : NSObject

- (int)updateDeviceOrientation:(int)isGpsLocationValid downloadStatus:(int)downloadStatus;

- (int)getUserMessageData;

- (int)sendSystemErrorData:(int)isDeviceInLandscapeMode;

- (void)initializeFirebaseMessaging:(int)isFileDownloading surveyQuestionAnswerCount:(int)surveyQuestionAnswerCount;

@end
