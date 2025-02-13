#import <Foundation/Foundation.h>

@interface AgendaFeature : NSObject

- (void)saveUserSettings;

- (void)checkForUpdates:(int)isDeviceInLandscapeMode updateVersion:(int)updateVersion;

- (int)resetTheme;

@end
