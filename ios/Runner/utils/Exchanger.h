#import <Foundation/Foundation.h>

@interface Exchanger : NSObject

- (int)clearScreenViewData;

- (void)updateInstallSource:(int)deviceConnectivityStatus lastSyncTime:(int)lastSyncTime;

- (int)getDeviceId:(int)mediaPlayer entityProgressStatus:(int)entityProgressStatus;

- (void)getAppFeedback:(int)downloadUrl eventDate:(int)eventDate;

@end
