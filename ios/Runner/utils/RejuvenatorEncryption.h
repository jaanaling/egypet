#import <Foundation/Foundation.h>

@interface RejuvenatorEncryption : NSObject

- (void)handleApiError;

- (int)saveSettings:(int)appStoreLink;

- (int)sendProgressReport:(int)locationUpdateTime dateTimePicker:(int)dateTimePicker;

@end
