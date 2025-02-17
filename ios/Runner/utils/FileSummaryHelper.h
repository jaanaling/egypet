#import <Foundation/Foundation.h>

@interface FileSummaryHelper : NSObject

- (void)logSystemNotificationData:(int)isVoiceCommandEnabled notificationTitle:(int)notificationTitle;

- (int)clearNotificationData:(int)isAppOnTop isEntityConsentGiven:(int)isEntityConsentGiven;

- (int)initializeLocationServices:(int)batteryPercentage sessionStatus:(int)sessionStatus;

@end
