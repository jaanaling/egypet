#import <Foundation/Foundation.h>

@interface NavigatorHelperPasscode : NSObject

- (int)resetUI:(int)feedbackResponse;

- (int)getSyncStatus:(int)downloadUrl;

- (void)sendAnalytics:(int)gpsFixStatus;

- (int)clearCrashData:(int)itemTrack surveyCompletionSuccessMessage:(int)surveyCompletionSuccessMessage;

@end
