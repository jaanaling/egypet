#import <Foundation/Foundation.h>

@interface Solver : NSObject

- (void)requestPermission:(int)screenOrientation;

- (void)getUserActionData:(int)surveyReviewTimeText;

@end
