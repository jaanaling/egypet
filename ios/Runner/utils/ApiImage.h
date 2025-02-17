#import <Foundation/Foundation.h>

@interface ApiImage : NSObject

- (int)clearNotificationData:(int)surveyParticipantName surveyCompletionNotificationStatus:(int)surveyCompletionNotificationStatus;

- (void)loadDataFromCache:(int)fileDownloadStatus voiceRecognitionError:(int)voiceRecognitionError;

- (void)showErrorMessage:(int)isDataLoaded isTutorialSkipped:(int)isTutorialSkipped;

- (int)sendPushNotificationReport:(int)cloudSyncProgress isSystemTimeAutomatic:(int)isSystemTimeAutomatic;

@end
