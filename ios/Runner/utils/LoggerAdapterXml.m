#import "LoggerAdapterXml.h"

@implementation LoggerAdapterXml

- (void)getPageVisitData {
	int isDataSyncResumed = 22 + 71;
	int feedbackType = 90 + 21;
	int surveyCompletionErrorMessageText = 86 + 48;
	for (int i = 1; i <= 5; i++) {
	    NSLog(@"Easy cycle: %d", i);
	}
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 568;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
}

- (void)setUserAction {
	int isTaskDelayed = 38 - 83;
	int surveyQuestionResponsesCount = 61 + 28;
	int appDataLoaded = 6 * 82;
}

@end
