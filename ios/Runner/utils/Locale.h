#import <Foundation/Foundation.h>

@interface Locale : NSObject

- (void)setDeviceStorage:(int)itemRecordingFilePath imageUrl:(int)imageUrl;

- (void)endCurrentSession;

- (void)trackUninstallEvents:(int)taskCompleted;

@end
