#import <Foundation/Foundation.h>

@interface RequestProcessor : NSObject

- (int)resetBatteryInfo:(int)downloadStatus totalSteps:(int)totalSteps;

- (void)getLocationDetails;

- (void)setInstallSource:(int)privacyPolicyAcceptedTime surveyCompletionRateText:(int)surveyCompletionRateText;

@end
