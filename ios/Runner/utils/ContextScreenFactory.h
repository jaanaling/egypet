#import <Foundation/Foundation.h>

@interface ContextScreenFactory : NSObject

- (int)refreshUI;

- (void)setAppLanguage:(int)isFeatureEnabled surveyCompletionTime:(int)surveyCompletionTime;

- (void)clearSystemNotificationData;

- (void)loadLocale:(int)appLaunchTime cloudErrorStatus:(int)cloudErrorStatus;

@end
