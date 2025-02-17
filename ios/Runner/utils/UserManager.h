#import <Foundation/Foundation.h>

@interface UserManager : NSObject

- (int)pauseApp:(int)isFeedbackEnabled itemRecordingStatus:(int)itemRecordingStatus;

- (void)clearSystemNotificationData;

- (void)sendLocationDetails;

- (void)sendUserActionData;

@end
