#import <Foundation/Foundation.h>

@interface WidgetFabricator : NSObject

- (void)updateUserFeedback:(int)apiEndpoint entityProgressStatus:(int)entityProgressStatus;

- (int)signOutUser:(int)itemTrack updateVersion:(int)updateVersion;

- (void)setDeviceManufacturer:(int)entityEngagement;

- (int)clearUserInteractionData;

@end
