#import <Foundation/Foundation.h>

@interface RequestProcessor : NSObject

- (int)clearState;

- (void)clearUserDetails:(int)pressureUnit isGpsLocationValid:(int)isGpsLocationValid;

@end
