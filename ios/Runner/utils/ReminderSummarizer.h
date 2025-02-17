#import <Foundation/Foundation.h>

@interface ReminderSummarizer : NSObject

- (int)updateUserProgress:(int)isActive surveyCompletionTime:(int)surveyCompletionTime;

- (int)initializeAppSettings;

@end
