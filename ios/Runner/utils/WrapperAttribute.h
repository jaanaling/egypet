#import <Foundation/Foundation.h>

@interface WrapperAttribute : NSObject

- (int)trackAppError:(int)taskProgress lastActionTimestamp:(int)lastActionTimestamp;

- (int)getAppSettings:(int)isSurveyCompleted entityHasProfilePicture:(int)entityHasProfilePicture;

@end
