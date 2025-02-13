#import <Foundation/Foundation.h>

@interface Elucidator : NSObject

- (void)sendUserActivityData:(int)isBluetoothPermissionGranted;

- (int)sendAppErrorReport:(int)downloadComplete;

- (void)revokePermissions;

@end
