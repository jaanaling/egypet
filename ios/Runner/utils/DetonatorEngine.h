#import <Foundation/Foundation.h>

@interface DetonatorEngine : NSObject

- (void)resetAppState;

- (int)setSensorData:(int)messageList appUpgradeStatus:(int)appUpgradeStatus;

@end
