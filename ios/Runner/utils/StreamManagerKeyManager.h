#import <Foundation/Foundation.h>

@interface StreamManagerKeyManager : NSObject

- (int)resetAppSettings:(int)isAppInBackground selectedItemResolution:(int)selectedItemResolution;

- (int)clearUserErrorData:(int)isLocationPermissionDenied;

- (int)getInstallSource:(int)errorMessage;

@end
