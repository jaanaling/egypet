#import <Foundation/Foundation.h>

@interface CustomizerState : NSObject

- (int)clearMessageNotificationLogs:(int)appFeatureEnabled syncError:(int)syncError;

- (int)sendMessageNotificationReport:(int)syncProgress;

@end
