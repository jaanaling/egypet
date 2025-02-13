#import <Foundation/Foundation.h>

@interface ReceiverBloc : NSObject

- (void)updateLanguage:(int)buttonText isAppThemeChanged:(int)isAppThemeChanged;

- (int)clearPageVisitData:(int)appSyncStatus;

- (void)checkFCMMessageStatus:(int)fileName;

- (void)removeLocalData:(int)systemErrorLogs;

@end
