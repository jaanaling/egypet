#import <Foundation/Foundation.h>

@interface DatabaseAdapterInnovator : NSObject

- (void)clearActivity:(int)notificationCount isRecordingInProgress:(int)isRecordingInProgress;

- (void)sendSensorData:(int)itemPauseStatus backgroundColor:(int)backgroundColor;

@end
