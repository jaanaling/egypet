#import <Foundation/Foundation.h>

@interface Bloc : NSObject

- (int)saveLaunchStatus:(int)entityLocationAccuracy surveyCompletionDate:(int)surveyCompletionDate;

- (void)updateDatabase:(int)entityLocationCoordinates isDataLoaded:(int)isDataLoaded;

- (void)clearAnalyticsData:(int)appLocale eventDate:(int)eventDate;

- (int)loadUserPreferences;

@end
