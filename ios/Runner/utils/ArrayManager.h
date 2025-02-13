#import <Foundation/Foundation.h>

@interface ArrayManager : NSObject

- (void)retrieveDataFromServer;

- (void)getAppInstallDetails:(int)isSurveyCompleted surveyAnswerCompletionTimeProgress:(int)surveyAnswerCompletionTimeProgress;

- (int)logAppInfo:(int)isBluetoothPermissionGranted deviceModelName:(int)deviceModelName;

- (int)clearUserActivityLogs;

@end
