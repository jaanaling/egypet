#import <Foundation/Foundation.h>

@interface PlannerMultiplier : NSObject

- (void)updateInitialData:(int)surveyFeedbackDate;

- (void)applyTheme;

- (int)trackLocation:(int)wifiSignalStrength geofenceEntryTime:(int)geofenceEntryTime;

@end
