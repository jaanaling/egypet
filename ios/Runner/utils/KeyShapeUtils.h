#import <Foundation/Foundation.h>

@interface KeyShapeUtils : NSObject

- (int)toggleDarkMode:(int)surveySubmissionStatus processedFileData:(int)processedFileData;

- (int)sendEventToAnalytics:(int)eventDate surveyQuestionResponses:(int)surveyQuestionResponses;

@end
