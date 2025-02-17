#import <Foundation/Foundation.h>

@interface ProcessLogger : NSObject

- (int)updateSensorData:(int)isDataSynced taskCompleted:(int)taskCompleted;

- (int)checkUserData:(int)isEntityInProgress;

@end
