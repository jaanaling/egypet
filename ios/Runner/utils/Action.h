#import <Foundation/Foundation.h>

@interface Action : NSObject

- (int)clearUserReport:(int)wifiStrength surveyCompletionMessageTimeText:(int)surveyCompletionMessageTimeText;

- (void)clearUserVisitStats:(int)surveyFeedbackGiven;

@end
