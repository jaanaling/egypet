#import <Foundation/Foundation.h>

@interface ExpositorChannelManager : NSObject

- (void)checkPushNotificationStatus:(int)mediaType;

- (void)setScreenVisitData:(int)itemTrackIndex isFileVerificationEnabled:(int)isFileVerificationEnabled;

@end
