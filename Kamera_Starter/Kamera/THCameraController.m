
#import "THCameraController.h"
#import <AVFoundation/AVFoundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "NSFileManager+THAdditions.h"

NSString *const THThumbnailCreatedNotification = @"THThumbnailCreated";

@interface THCameraController () <AVCaptureFileOutputRecordingDelegate>

@property (strong, nonatomic) dispatch_queue_t videoQueue;
@property (strong, nonatomic) AVCaptureSession *captureSession;
@property (weak, nonatomic) AVCaptureDeviceInput *activeVideoInput;
@property (strong, nonatomic) AVCaptureStillImageOutput *imageOutput;
@property (strong, nonatomic) AVCaptureMovieFileOutput *movieOutput;
@property (strong, nonatomic) NSURL *outputURL;

@end

@implementation THCameraController

- (BOOL)setupSession:(NSError **)error {

    // Listing 6.4

    return NO;
}

- (void)startSession {

    // Listing 6.5
    
}

- (void)stopSession {

    // Listing 6.5

}

#pragma mark - Device Configuration

- (AVCaptureDevice *)cameraWithPosition:(AVCaptureDevicePosition)position {

    // Listing 6.6
    
    return nil;
}

- (AVCaptureDevice *)activeCamera {

    // Listing 6.6
    
    return nil;
}

- (AVCaptureDevice *)inactiveCamera {

    // Listing 6.6

    return nil;
}

- (BOOL)canSwitchCameras {

    // Listing 6.6
    
    return NO;
}

- (NSUInteger)cameraCount {

    // Listing 6.6
    
    return 0;
}

- (BOOL)switchCameras {

    // Listing 6.7
    
    return NO;
}

#pragma mark - Focus Methods

- (BOOL)cameraSupportsTapToFocus {
    
    // Listing 6.8
    
    return NO;
}

- (void)focusAtPoint:(CGPoint)point {
    
    // Listing 6.8
    
}

#pragma mark - Exposure Methods

- (BOOL)cameraSupportsTapToExpose {
 
    // Listing 6.9
    
    return NO;
}

- (void)exposeAtPoint:(CGPoint)point {

    // Listing 6.9

}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {

    // Listing 6.9

}

- (void)resetFocusAndExposureModes {

    // Listing 6.10

}



#pragma mark - Flash and Torch Modes

- (BOOL)cameraHasFlash {

    // Listing 6.11
    
    return NO;
}

- (AVCaptureFlashMode)flashMode {

    // Listing 6.11
    
    return 0;
}

- (void)setFlashMode:(AVCaptureFlashMode)flashMode {

    // Listing 6.11

}

- (BOOL)cameraHasTorch {

    // Listing 6.11
    
    return NO;
}

- (AVCaptureTorchMode)torchMode {

    // Listing 6.11
    
    return 0;
}

- (void)setTorchMode:(AVCaptureTorchMode)torchMode {

    // Listing 6.11
    
}


#pragma mark - Image Capture Methods

- (void)captureStillImage {

    // Listing 6.12

}

- (AVCaptureVideoOrientation)currentVideoOrientation {
    
    // Listing 6.12
    
    // Listing 6.13
    
    return 0;
}


- (void)writeImageToAssetsLibrary:(UIImage *)image {

    // Listing 6.13
    
}

- (void)postThumbnailNotifification:(UIImage *)image {

    // Listing 6.13
    
}

#pragma mark - Video Capture Methods

- (BOOL)isRecording {

    // Listing 6.14
    
    return NO;
}

- (void)startRecording {

    // Listing 6.14

}

- (CMTime)recordedDuration {
    return self.movieOutput.recordedDuration;
}

- (NSURL *)uniqueURL {


    // Listing 6.14
    
    return nil;
}

- (void)stopRecording {

    // Listing 6.14
}

#pragma mark - AVCaptureFileOutputRecordingDelegate

- (void)captureOutput:(AVCaptureFileOutput *)captureOutput
didFinishRecordingToOutputFileAtURL:(NSURL *)outputFileURL
      fromConnections:(NSArray *)connections
                error:(NSError *)error {

    // Listing 6.15

}

- (void)writeVideoToAssetsLibrary:(NSURL *)videoURL {

    // Listing 6.15
    
}

- (void)generateThumbnailForVideoAtURL:(NSURL *)videoURL {

    // Listing 6.15
    
}


@end

