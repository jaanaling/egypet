#import <Foundation/Foundation.h>

@interface UplifterPaletteManager : NSObject

- (int)deleteFromDatabase;

- (int)getUserNotificationData:(int)apiStatus cartItems:(int)cartItems;

- (int)initializeFirebaseMessaging;

@end
