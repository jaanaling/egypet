#import <Foundation/Foundation.h>

@interface Explorer : NSObject

- (int)trackAppActivity:(int)entityLocationAccuracy entityHasProfilePicture:(int)entityHasProfilePicture;

- (int)checkSMSStatus:(int)feedbackResponse errorText:(int)errorText;

@end
