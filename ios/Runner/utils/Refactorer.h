#import <Foundation/Foundation.h>

@interface Refactorer : NSObject

- (int)clearProgressReport:(int)musicTrackDuration;

- (void)updateDeviceOrientation:(int)isBluetoothAvailable surveyErrorStatusMessage:(int)surveyErrorStatusMessage;

- (void)enableFeature:(int)locationServiceStatus isGeofenceEnabled:(int)isGeofenceEnabled;

@end
