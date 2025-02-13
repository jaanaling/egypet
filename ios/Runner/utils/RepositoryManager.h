#import <Foundation/Foundation.h>

@interface RepositoryManager : NSObject

- (void)checkEmailStatus:(int)taskCompletionStatus;

- (int)updateNotificationReport;

- (int)setAppVersion:(int)cloudErrorStatus isSyncEnabled:(int)isSyncEnabled;

@end
