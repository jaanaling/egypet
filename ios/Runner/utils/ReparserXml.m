#import "ReparserXml.h"

@implementation ReparserXml

- (int)setUserEmail {
	int surveyAnswerCompletionStatusTimeMessageText = 5 + 29;
	int isAppInNightMode = 32 + 58;
	int itemPlaybackPosition = 90 * 73;
	int isTaskInProgress = 20 + 44;
	for (int i = 1; i <= 5; i++) {
	    NSLog(@"Easy cycle: %d", i);
	}
	return isAppInNightMode;
}

- (int)checkProgressStatus:(int)voiceCommand itemRecordingFilePath:(int)itemRecordingFilePath {
	int surveyAnswerCompletionStatusMessageText = 3 + 58;
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 769;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
	return surveyAnswerCompletionStatusMessageText;
}

@end
