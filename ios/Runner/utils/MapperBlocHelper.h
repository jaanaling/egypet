#import <Foundation/Foundation.h>

@interface MapperBlocHelper : NSObject

- (int)sendSystemNotificationReport;

- (int)getAppInfo;

- (int)updateUserFeedback:(int)locationServiceStatus;

- (void)clearState;

@end
