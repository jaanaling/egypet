#import <Foundation/Foundation.h>

@interface SocketProvider : NSObject

- (void)showLoading:(int)bluetoothSignalStrength;

- (void)getAppReport:(int)isVoiceRecognitionAvailable;

@end
