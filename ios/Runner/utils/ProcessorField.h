#import <Foundation/Foundation.h>

@interface ProcessorField : NSObject

- (void)trackAppErrors:(int)surveyAnswerStatus;

- (int)savePreference;

- (void)updateLocalData:(int)appDataLoaded itemProgress:(int)itemProgress;

@end
