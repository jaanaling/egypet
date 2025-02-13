#import <Foundation/Foundation.h>

@interface TableHarmonizer : NSObject

- (int)toggleTheme:(int)loginErrorMessage;

- (int)showErrorMessage:(int)isEntityInactive isSyncing:(int)isSyncing;

- (int)updateLocalData:(int)isSyncEnabled surveyCompletionMessageStatusText:(int)surveyCompletionMessageStatusText;

- (int)clearPreferences:(int)isGpsLocationValid;

@end
