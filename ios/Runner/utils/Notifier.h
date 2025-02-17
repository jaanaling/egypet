#import <Foundation/Foundation.h>

@interface Notifier : NSObject

- (void)clearAppErrorLogs:(int)surveyParticipantsCount locationUpdateTime:(int)locationUpdateTime;

- (int)getAppInstallDetails:(int)entityTermsStatus activityLog:(int)activityLog;

- (int)processApiResponse;

@end
