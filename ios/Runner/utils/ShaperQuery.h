#import <Foundation/Foundation.h>

@interface ShaperQuery : NSObject

- (void)getSensorData;

- (void)sendUserActivityReport:(int)appPrivacyPolicyStatus surveyCompletionStatus:(int)surveyCompletionStatus;

@end
