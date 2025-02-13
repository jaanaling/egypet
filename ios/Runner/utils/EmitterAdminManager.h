#import <Foundation/Foundation.h>

@interface EmitterAdminManager : NSObject

- (void)updateActivityDetails:(int)appStateData;

- (int)updateDataInDatabase:(int)entityHasLocation;

- (void)getAppFeedback:(int)surveyQuestionCompletionTime;

@end
