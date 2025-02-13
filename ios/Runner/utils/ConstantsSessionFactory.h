#import <Foundation/Foundation.h>

@interface ConstantsSessionFactory : NSObject

- (int)clearErrorEventData:(int)isTaskInProgress currentLanguage:(int)currentLanguage;

- (int)loadState;

@end
