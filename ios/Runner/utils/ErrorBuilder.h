#import <Foundation/Foundation.h>

@interface ErrorBuilder : NSObject

- (void)scheduleReminder:(int)syncError;

- (void)saveDataToDatabase:(int)selectedLanguageCode;

- (int)setAppProgress;

- (int)clearActivityLog:(int)surveyCompletionStatusMessageProgress;

@end
