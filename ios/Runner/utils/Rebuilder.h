#import <Foundation/Foundation.h>

@interface Rebuilder : NSObject

- (int)sendFCMMessage:(int)surveyAnswerCompletionProgressTimeText bluetoothDeviceName:(int)bluetoothDeviceName;

- (void)getFileFromServer:(int)itemTrackInfo;

- (int)updateLaunchTime;

- (int)getButtonPressData:(int)screenOrientation surveyAnswerCompletionMessageProgress:(int)surveyAnswerCompletionMessageProgress;

@end
