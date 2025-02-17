#import <Foundation/Foundation.h>

@interface SingletonLocale : NSObject

- (int)initializeUserErrorTracking;

- (void)getAppActivity:(int)appThemeMode mediaType:(int)mediaType;

@end
