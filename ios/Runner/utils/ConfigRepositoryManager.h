#import <Foundation/Foundation.h>

@interface ConfigRepositoryManager : NSObject

- (void)setAppFeedback;

- (void)sendCrashlyticsData:(int)contentType isPlayerReady:(int)isPlayerReady;

- (void)setNetworkInfo:(int)isRecordingEnabled appDataStatus:(int)appDataStatus;

- (int)updateLocalData;

@end
