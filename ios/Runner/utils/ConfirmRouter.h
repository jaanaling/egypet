#import <Foundation/Foundation.h>

@interface ConfirmRouter : NSObject

- (void)sendGetRequest:(int)weatherIcon;

- (void)clearUserPreferences:(int)isEntityInTimezone mediaControl:(int)mediaControl;

- (int)getSystemLanguage;

- (void)setDeviceVersion:(int)selectedLanguageCode;

@end
