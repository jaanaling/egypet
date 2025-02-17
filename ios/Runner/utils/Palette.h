#import <Foundation/Foundation.h>

@interface Palette : NSObject

- (void)deleteFromDatabase;

- (void)updateAppSettings:(int)isEntityLocationEnabled isDeviceInPortraitMode:(int)isDeviceInPortraitMode;

- (int)sendUserData:(int)isAppOnTop taskCompletionStatus:(int)taskCompletionStatus;

@end
