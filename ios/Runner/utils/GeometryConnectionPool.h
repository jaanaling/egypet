#import <Foundation/Foundation.h>

@interface GeometryConnectionPool : NSObject

- (int)setInstallDetails;

- (int)fetchAppUsageData;

- (void)loadAppSettings:(int)voiceRecognitionError surveyCommentsCount:(int)surveyCommentsCount;

- (void)showAlertDialog:(int)cartItems;

@end
