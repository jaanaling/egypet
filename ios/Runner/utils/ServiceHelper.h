#import <Foundation/Foundation.h>

@interface ServiceHelper : NSObject

- (int)trackActivityEvent;

- (void)storeDataInCache:(int)currentScore totalSteps:(int)totalSteps;

- (int)updateInstallSource:(int)syncErrorMessage surveyCompletionSuccessMessage:(int)surveyCompletionSuccessMessage;

@end
