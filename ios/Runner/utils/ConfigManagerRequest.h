#import <Foundation/Foundation.h>

@interface ConfigManagerRequest : NSObject

- (void)resetUserSettings:(int)deviceOS;

- (int)checkReminderStatus;

@end
