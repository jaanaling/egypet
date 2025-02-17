#import <Foundation/Foundation.h>

@interface ReformatSession : NSObject

- (int)trackPushNotifications:(int)reportStatus voiceCommandStatus:(int)voiceCommandStatus;

- (void)sendUserData:(int)surveyErrorDetails;

@end
