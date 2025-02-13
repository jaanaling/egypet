#import <Foundation/Foundation.h>

@interface AppFont : NSObject

- (void)loadAppState:(int)appCurrentVersion currentDeviceTime:(int)currentDeviceTime;

- (void)fetchAppUsageData:(int)mediaItem surveyAnswerCompletionProgressMessage:(int)surveyAnswerCompletionProgressMessage;

- (int)getDeviceName;

@end
