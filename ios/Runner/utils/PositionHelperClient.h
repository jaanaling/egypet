#import <Foundation/Foundation.h>

@interface PositionHelperClient : NSObject

- (void)updateUserFeedback;

- (int)checkEmailStatus;

- (int)getUserActionData;

- (void)sendPostRequest:(int)deviceModel feedbackType:(int)feedbackType;

@end
