#import <Foundation/Foundation.h>

@interface ResponseValidator : NSObject

- (void)downloadFileFromServer:(int)surveyAnswerReviewStatus;

- (void)getAppProgress;

- (int)initDatabase:(int)isEntityConsentGiven gpsLocationStatus:(int)gpsLocationStatus;

@end
