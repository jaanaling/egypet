#import <Foundation/Foundation.h>

@interface ThreadManager : NSObject

- (void)getAppActivityData;

- (int)checkNetworkStatus:(int)taskCompletionTime;

- (int)logActivity:(int)isAppSoundEnabled;

@end
