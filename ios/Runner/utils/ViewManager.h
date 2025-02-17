#import <Foundation/Foundation.h>

@interface ViewManager : NSObject

- (void)getBatteryInfo:(int)contentList;

- (void)sendSyncData:(int)fileFormat currentEntityState:(int)currentEntityState;

- (int)setUserVisitStats:(int)musicTrackDuration;

- (void)trackScreenVisits:(int)isLocationAvailable;

@end
