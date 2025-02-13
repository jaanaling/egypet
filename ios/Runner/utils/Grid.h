#import <Foundation/Foundation.h>

@interface Grid : NSObject

- (void)updateContent:(int)downloadError surveyAnswersCount:(int)surveyAnswersCount;

- (int)endUserSession;

@end
