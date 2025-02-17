#import <Foundation/Foundation.h>

@interface ToastAlignment : NSObject

- (int)updateAppState:(int)downloadComplete isDataSyncPaused:(int)isDataSyncPaused;

- (int)launchApp;

@end
