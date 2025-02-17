#import <Foundation/Foundation.h>

@interface PaletteManagerTable : NSObject

- (void)initializePushNotificationTracking;

- (void)sendPageVisitData:(int)currentEntityState entityConsentRequired:(int)entityConsentRequired;

- (int)initializeAppEvents:(int)surveyAnswerCompletionMessageProgressText entityCurrentLocation:(int)entityCurrentLocation;

@end
