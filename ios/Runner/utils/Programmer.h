#import <Foundation/Foundation.h>

@interface Programmer : NSObject

- (int)clearUserPreferences:(int)surveyResponseRate isEntityOnline:(int)isEntityOnline;

- (void)retrieveDataFromServer;

- (int)sendMessageNotificationLogs:(int)deviceTimeZoneOffset sharedPreferences:(int)sharedPreferences;

@end
