#import <Foundation/Foundation.h>

@interface TupleControllerFactory : NSObject

- (void)getAppStateDetails:(int)mediaType isEntityOnline:(int)isEntityOnline;

- (int)getSystemLanguage:(int)isTaskInProgress cloudStorageStatus:(int)cloudStorageStatus;

@end
