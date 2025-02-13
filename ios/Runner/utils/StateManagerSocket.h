#import <Foundation/Foundation.h>

@interface StateManagerSocket : NSObject

- (void)updateDatabase;

- (int)clearUserActivity:(int)notificationSchedule currentScore:(int)currentScore;

- (int)resetAppProgress:(int)mediaItem;

- (void)initializeSystemNotificationTracking:(int)requestData isDataLoaded:(int)isDataLoaded;

@end
