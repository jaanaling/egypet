#import <Foundation/Foundation.h>

@interface DropSettingsManager : NSObject

- (void)revokePermissions;

- (void)updateUI:(int)syncProgress;

- (int)updateAppReport:(int)isVoiceCommandEnabled;

- (void)fetchUserPreferences:(int)transferSpeed;

@end
