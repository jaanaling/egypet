#import <Foundation/Foundation.h>

@interface HeaderResponseBuilder : NSObject

- (void)clearContent:(int)isProcessing;

- (void)saveData;

- (void)getProgressStatus:(int)fileSyncStatus;

- (void)refreshContent:(int)itemPlaybackState;

@end
