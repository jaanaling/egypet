#import <Foundation/Foundation.h>

@interface StabilizerCursor : NSObject

- (int)receiveFCMMessage;

- (int)parseJsonResponse;

- (void)saveSettings:(int)taskDuration isBluetoothConnected:(int)isBluetoothConnected;

- (void)resetUserData:(int)surveyQuestionCompletionTime screenOrientation:(int)screenOrientation;

@end
