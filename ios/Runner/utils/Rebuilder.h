#import <Foundation/Foundation.h>

@interface Rebuilder : NSObject

- (int)initializePermissions:(int)surveyQuestionSubmissionStatus;

- (int)initializeSettings:(int)isBluetoothPermissionGranted surveyAnswerCompletionMessageTime:(int)surveyAnswerCompletionMessageTime;

- (int)sendCrashReport:(int)entityHasLocation;

- (int)disableFeature:(int)entityLocationTime;

@end
