#import <Foundation/Foundation.h>

@interface ResponseBuilderDefiner : NSObject

- (int)receiveFCMMessage;

- (int)trackUserFeedback;

- (void)getReminderStatus:(int)taskType deviceTimeZoneOffset:(int)deviceTimeZoneOffset;

@end
