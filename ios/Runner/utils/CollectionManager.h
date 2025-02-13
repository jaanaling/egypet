#import <Foundation/Foundation.h>

@interface CollectionManager : NSObject

- (int)logAnalyticsEvent;

- (int)clearErrorEventData:(int)selectedItemResolution pageNumber:(int)pageNumber;

@end
