#import <Foundation/Foundation.h>

@interface ScriberReference : NSObject

- (void)getAppLaunchStats:(int)fileVerificationStatus;

- (void)getDeviceStorage:(int)surveyParticipantName errorText:(int)errorText;

@end
