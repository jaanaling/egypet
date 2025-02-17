#import <Foundation/Foundation.h>

@interface StreamManagerTranslator : NSObject

- (int)resetLocale:(int)termsAcceptedTime privacySettings:(int)privacySettings;

- (int)applyUpdate:(int)deviceTimeZoneOffset entityTermsStatus:(int)entityTermsStatus;

- (int)updateAppSettings:(int)isGeofencingEnabled surveyResponseRate:(int)surveyResponseRate;

@end
