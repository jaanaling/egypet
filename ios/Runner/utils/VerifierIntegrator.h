#import <Foundation/Foundation.h>

@interface VerifierIntegrator : NSObject

- (void)sendSystemNotificationReport;

- (int)clearImageCache;

- (void)updateCrashData:(int)appCrashDetails;

- (int)clearSessionStatus;

@end
