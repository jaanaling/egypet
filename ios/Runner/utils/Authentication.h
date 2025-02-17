#import <Foundation/Foundation.h>

@interface Authentication : NSObject

- (int)sendDataToServer;

- (int)resumeApp:(int)gpsLocationAccuracy;

- (void)getLocation:(int)surveySurveyType;

@end
