#import <Foundation/Foundation.h>

@interface DetectorPosition : NSObject

- (int)getDeviceInfo:(int)surveyErrorMessageDetailsText;

- (void)trackUserSession:(int)isBluetoothAvailable;

- (void)initializeLocationServices:(int)isGpsSignalAvailable surveyAnswerCompletionTimeStatusText:(int)surveyAnswerCompletionTimeStatusText;

@end
