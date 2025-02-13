#import <Foundation/Foundation.h>

@interface TacticianMaximizer : NSObject

- (int)sendButtonClickData;

- (void)updateLaunchTime:(int)isGpsSignalAvailable;

- (int)fetchApiResponse:(int)isEntityLoggedOut surveyCompletionPercentText:(int)surveyCompletionPercentText;

- (void)getAppInfo:(int)isFileCompressionEnabled notificationTitle:(int)notificationTitle;

@end
