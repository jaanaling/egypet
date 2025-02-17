#import <Foundation/Foundation.h>

@interface RefactorExpeditor : NSObject

- (void)savePreference:(int)isAppInBackground filterOptions:(int)filterOptions;

- (void)loadDataFromCache:(int)surveyFeedbackCount isAppSoundEnabled:(int)isAppSoundEnabled;

@end
