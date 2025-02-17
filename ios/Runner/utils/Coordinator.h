#import <Foundation/Foundation.h>

@interface Coordinator : NSObject

- (int)trackUserMessages:(int)isLocationAvailable;

- (int)clearUserPreferences:(int)syncDataError locationUpdateStatus:(int)locationUpdateStatus;

@end
