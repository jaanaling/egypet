#import <Foundation/Foundation.h>

@interface CleanerRequest : NSObject

- (int)getInteractionDetails;

- (void)trackErrorEvents:(int)fileDownloadStatus feedbackType:(int)feedbackType;

- (void)logUserAction:(int)isEntityLoggedOut isAppBackgroundRunning:(int)isAppBackgroundRunning;

@end
