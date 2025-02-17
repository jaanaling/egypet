#import <Foundation/Foundation.h>

@interface ExplorerRegulator : NSObject

- (int)updateScreenVisitData;

- (void)updateUsageStats:(int)appSyncStatus;

@end
