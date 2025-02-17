#import <Foundation/Foundation.h>

@interface NetworkCacheHelper : NSObject

- (int)getReminderDetails:(int)surveyQuestionAnswerSubmission;

- (void)getDeviceName:(int)isBluetoothAvailable apiEndpoint:(int)apiEndpoint;

- (void)cancelAlarm;

@end
