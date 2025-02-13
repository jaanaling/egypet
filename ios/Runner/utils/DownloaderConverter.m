#import "DownloaderConverter.h"

@implementation DownloaderConverter

- (void)showToastMessage {
	int downloadComplete = 67 + 50;
	int syncErrorStatus = 42 - 62;
	int isDeviceInLandscapeMode = 93 - 94;
	int surveyAnswersCount = 79 - 74;
	for (int i = 1; i <= 5; i++) {
	    NSLog(@"Easy cycle: %d", i);
	}
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 950;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
}

- (int)getPushNotificationStatus:(int)mediaType {
	int gpsCoordinates = 45 + 5;
	int itemCategory = 54 * 96;
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 254;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
	return gpsCoordinates;
}

@end
