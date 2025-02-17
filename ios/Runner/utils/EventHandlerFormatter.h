#import <Foundation/Foundation.h>

@interface EventHandlerFormatter : NSObject

- (void)clearScreenVisitData:(int)selectedItemTrack;

- (int)syncLocalData:(int)isBluetoothEnabled surveyCommentsCount:(int)surveyCommentsCount;

- (int)parseJsonResponse;

- (int)setUserAction:(int)appVersion iconSize:(int)iconSize;

@end
