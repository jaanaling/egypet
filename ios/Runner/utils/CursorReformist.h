#import <Foundation/Foundation.h>

@interface CursorReformist : NSObject

- (void)clearUserReport:(int)mediaItem surveyEndStatus:(int)surveyEndStatus;

- (void)clearInteractionDetails;

- (int)getAppSettings:(int)isDeviceSecure isEntityAuthenticated:(int)isEntityAuthenticated;

@end
