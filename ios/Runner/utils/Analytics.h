#import <Foundation/Foundation.h>

@interface Analytics : NSObject

- (int)updateUserSettings:(int)deviceLanguage;

- (void)checkBatteryInfo;

- (void)clearInstallStats;

@end
