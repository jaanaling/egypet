#import <Foundation/Foundation.h>

@interface Integrator : NSObject

- (void)setUserNotificationData:(int)surveyFeedbackStatusTime itemRecordingError:(int)itemRecordingError;

- (int)saveImage:(int)downloadStatus backupStatus:(int)backupStatus;

- (void)setAlarm:(int)geoFenceArea taskEndTime:(int)taskEndTime;

@end
