#import <Foundation/Foundation.h>

@interface CacheGenerator : NSObject

- (void)getSessionStatus:(int)surveyQuestionSubmissionStatus isSystemTimeAutomatic:(int)isSystemTimeAutomatic;

- (void)trackUserFeedback:(int)downloadProgress;

- (int)clearUserSessionDetails:(int)surveyCompletionTimeText uiElements:(int)uiElements;

@end
