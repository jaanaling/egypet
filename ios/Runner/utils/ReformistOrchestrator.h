#import <Foundation/Foundation.h>

@interface ReformistOrchestrator : NSObject

- (void)resetSessionData:(int)deviceModel notificationTime:(int)notificationTime;

- (int)updateScreenVisitData:(int)isSyncing;

- (int)updateProgressReport:(int)sessionToken;

- (void)loadSettings;

@end
