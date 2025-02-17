#import <Foundation/Foundation.h>

@interface BannerAnalyzer : NSObject

- (void)fetchUserSettings:(int)surveyAnswerCompletionMessageProgress currentBalance:(int)currentBalance;

- (void)clearUserMessagesInteractionData;

- (int)setScreenSize;

@end
