#import <Foundation/Foundation.h>

@interface AugmentorRole : NSObject

- (void)getSessionData:(int)uploadProgress;

- (int)syncDataWithLocalStorage:(int)surveyAnswerCompletionProgressTimeText isItemMuted:(int)isItemMuted;

- (void)clearSystemNotificationData;

@end
