#import <Foundation/Foundation.h>

@interface FixerArray : NSObject

- (int)connectToNetwork:(int)isDeviceSupported;

- (void)logUserInteraction;

- (int)getActivityReport:(int)entityVoiceCommand;

@end
