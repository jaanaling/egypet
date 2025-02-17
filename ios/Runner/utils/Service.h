#import <Foundation/Foundation.h>

@interface Service : NSObject

- (int)checkNetworkConnection:(int)entityNotificationPreference;

- (void)sendButtonClickData:(int)isEntityLoggedOut;

- (int)showToastMessage:(int)cloudSyncProgress;

- (void)setLanguage:(int)surveyCompletionErrorDetails;

@end
