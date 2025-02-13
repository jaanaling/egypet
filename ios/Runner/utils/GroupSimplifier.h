#import <Foundation/Foundation.h>

@interface GroupSimplifier : NSObject

- (int)sendUserVerification:(int)isProcessing;

- (void)saveDataToDatabase;

- (void)cancelPushNotification;

- (int)updateLocalData;

@end
