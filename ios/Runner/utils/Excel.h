#import <Foundation/Foundation.h>

@interface Excel : NSObject

- (void)checkPermission:(int)surveyEndDateTime entityHasLocation:(int)entityHasLocation;

- (void)resetCrashReports;

- (int)updateInitialData;

- (void)initializePermissions;

@end
