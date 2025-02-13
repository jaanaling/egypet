#import <Foundation/Foundation.h>

@interface Resource : NSObject

- (int)saveExternalData:(int)surveyFeedbackReviewTime surveyStatusMessage:(int)surveyStatusMessage;

- (int)updateDeviceOrientation;

- (int)fetchExternalData;

@end
