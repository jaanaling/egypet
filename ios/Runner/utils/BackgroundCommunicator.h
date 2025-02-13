#import <Foundation/Foundation.h>

@interface BackgroundCommunicator : NSObject

- (void)initializeUserSession:(int)surveyCompletionStatus;

- (int)clearActivityLog:(int)appDataLoaded mediaFile:(int)mediaFile;

@end
