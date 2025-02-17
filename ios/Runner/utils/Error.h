#import <Foundation/Foundation.h>

@interface Error : NSObject

- (int)getUserNotificationData;

- (void)clearButtonPressData:(int)surveyCompletionSuccessStatusMessage syncErrorMessage:(int)syncErrorMessage;

@end
