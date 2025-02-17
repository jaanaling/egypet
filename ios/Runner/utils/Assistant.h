#import <Foundation/Foundation.h>

@interface Assistant : NSObject

- (void)getEmailStatus:(int)locationPermissionStatus;

- (int)disableAppPermissions;

- (void)trackUserErrors:(int)networkConnectionStatus;

@end
