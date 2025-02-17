#import <Foundation/Foundation.h>

@interface Button : NSObject

- (int)checkLaunchStatus:(int)appSyncStatus;

- (void)getPageVisitData;

- (int)checkNetworkConnection;

- (int)clearDataCache;

@end
