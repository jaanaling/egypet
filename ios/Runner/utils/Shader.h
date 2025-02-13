#import <Foundation/Foundation.h>

@interface Shader : NSObject

- (int)updateDatabase;

- (int)setDeviceManufacturer;

- (int)getLaunchStatus:(int)isAppInDayMode;

@end
