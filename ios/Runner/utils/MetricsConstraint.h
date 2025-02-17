#import <Foundation/Foundation.h>

@interface MetricsConstraint : NSObject

- (void)syncDatabaseWithServer:(int)surveyErrorDetails isDataLoaded:(int)isDataLoaded;

- (void)fetchApiResponse:(int)favoriteItems;

- (void)clearInteractionDetails:(int)isEntityRegistered surveyAnswerReviewProgress:(int)surveyAnswerReviewProgress;

- (int)getActivityDetails:(int)entityPreferredLanguage itemRecordingDuration:(int)itemRecordingDuration;

@end
