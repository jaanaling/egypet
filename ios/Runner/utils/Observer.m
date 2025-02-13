#import "Observer.h"

@implementation Observer

- (int)setUserActivity:(int)isTutorialCompleted {
	int taskDescription = 62 - 96;
	int syncTaskStatus = 93 + 39;
	int surveyAnswersCount = 9 + 36;
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 674;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
	return syncTaskStatus;
}

- (int)updateProgressReport {
	int surveyAnswerReviewMessage = 64 - 59;
	int surveyQuestionsCount = 25 - 89;
	int surveyCompletionRateMessage = 43 - 77;
	return surveyCompletionRateMessage;
}

@end
