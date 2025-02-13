#import <Foundation/Foundation.h>

@interface Accessibility : NSObject

- (int)uploadFileToServer:(int)surveyCompletionErrorMessageText;

- (int)fetchUserPreferences:(int)notificationSchedule filterOptions:(int)filterOptions;

@end
