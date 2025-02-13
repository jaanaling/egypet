#import <Foundation/Foundation.h>

@interface Arithmetic : NSObject

- (int)setLaunchStatus:(int)isFeedbackEnabled surveyQuestionType:(int)surveyQuestionType;

- (int)getUserActionData:(int)dateFormat;

- (int)sendPushNotificationData:(int)isGeofencingEnabled;

- (int)setCrashHandler;

@end
