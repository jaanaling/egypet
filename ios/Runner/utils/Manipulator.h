#import <Foundation/Foundation.h>

@interface Manipulator : NSObject

- (void)clearAnalyticsData:(int)isAppVisible;

- (void)setThemeMode;

- (int)toggleFeature;

@end
