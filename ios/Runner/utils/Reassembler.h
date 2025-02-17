#import <Foundation/Foundation.h>

@interface Reassembler : NSObject

- (int)clearUserData:(int)isAppEnabled;

- (void)disconnectFromNetwork:(int)bluetoothSignalStrength;

- (int)checkNetwork:(int)activityStatus isLocationServiceRunning:(int)isLocationServiceRunning;

@end
