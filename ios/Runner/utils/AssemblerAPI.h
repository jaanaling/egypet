#import <Foundation/Foundation.h>

@interface AssemblerAPI : NSObject

- (void)logAppCrash;

- (int)clearAppErrorLogs:(int)syncErrorMessage entityProgressStatus:(int)entityProgressStatus;

- (int)openDatabaseConnection:(int)errorCodeDetails isSurveyAnonymous:(int)isSurveyAnonymous;

- (int)setCrashReporting;

@end
