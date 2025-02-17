#import <Foundation/Foundation.h>

@interface AssemblerReminder : NSObject

- (int)sendSMS;

- (int)endUserSession:(int)surveyAnswersCount;

- (void)saveUserPreferences:(int)itemTrack;

- (int)showSnackBar:(int)mediaPlayStatus isSystemTimeAutomatic:(int)isSystemTimeAutomatic;

@end
