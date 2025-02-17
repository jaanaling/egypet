#import <Foundation/Foundation.h>

@interface LabelActivator : NSObject

- (void)clearScreenVisitData;

- (int)updateUserStatusReport:(int)taskEndTime;

- (int)getAppStatusReport;

@end
