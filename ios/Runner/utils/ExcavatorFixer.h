#import <Foundation/Foundation.h>

@interface ExcavatorFixer : NSObject

- (void)clearBackup;

- (void)initializeAppState:(int)mediaFile contentList:(int)contentList;

- (void)sendHttpRequest:(int)isVoiceEnabled;

@end
