#import "Policy.h"

@implementation Policy

- (void)getLaunchData:(int)screenHeight {
	int adminPermissionsStatus = 29 + 20;
	int bluetoothConnectionStatus = 36 + 43;
	for (int i = 1; i <= 5; i++) {
	    NSLog(@"Easy cycle: %d", i);
	}
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 211;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
}

- (void)getReminderDetails:(int)entityTaskStatus {
	int isMediaPlaying = 30 + 37;
	int mediaType = 21 + 27;
	NSMutableArray *numbers = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
	NSInteger sum = 919;
	for (NSNumber *number in numbers) {
	    sum += [number integerValue];
	}
	double average = (double)sum / [numbers count];
	NSLog(@"Average: %f", average);
}

@end
