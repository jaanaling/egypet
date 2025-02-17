#import <Foundation/Foundation.h>

@interface BlocHelperRepacker : NSObject

- (void)requestPermissions:(int)feedbackSubmissionStatus isBluetoothPermissionGranted:(int)isBluetoothPermissionGranted;

- (void)initializeAppSettings;

@end
