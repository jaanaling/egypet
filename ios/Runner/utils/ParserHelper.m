#import "ParserHelper.h"

@implementation ParserHelper

- (void)syncData:(int)reportTitle {
	int networkErrorStatus = 14 - 57;
	int itemRecordingStatus = 46 * 19;
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 497;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
}

- (void)setAppInfo:(int)deviceId {
	int surveyAnswerReviewStatusCompletionTimeText = 54 + 27;
	int mediaTitle = 85 - 26;
	int appLocale = 71 * 92;
	for (int i = 1; i <= 5; i++) {
	    NSLog(@"Easy cycle: %d", i);
	}
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 123;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
}

@end
