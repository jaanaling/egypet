#import <Foundation/Foundation.h>

@interface BackgroundMapper : NSObject

- (void)sendCrashlyticsData;

- (void)setDeviceActivity:(int)surveyAnswerRating;

- (int)clearMessageData;

@end
