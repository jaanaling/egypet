#import <Foundation/Foundation.h>

@interface Handler : NSObject

- (void)setUserActivityLogs:(int)selectedLanguage;

- (int)resetAppState:(int)surveyCompletionReviewMessageTimeText;

- (void)trackErrorEvents;

- (int)clearPushNotification:(int)contentType;

@end
