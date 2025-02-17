#import <Foundation/Foundation.h>

@interface CustomizerShadowHelper : NSObject

- (void)handleHttpError;

- (int)checkForUpdates:(int)syncDuration;

- (void)recordLaunchTime:(int)downloadedFiles;

@end
