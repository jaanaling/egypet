#import <Foundation/Foundation.h>

@interface InitializerActivator : NSObject

- (int)checkPushNotificationStatus:(int)gpsSignalStatus surveyAnswerCompletionStatusProgressMessage:(int)surveyAnswerCompletionStatusProgressMessage;

- (void)sendAppStatusReport:(int)geofenceStatus;

- (void)getAppInstallDetails;

- (int)initializeInteractionTracking:(int)entityHasLocation itemMuteStatus:(int)itemMuteStatus;

@end
