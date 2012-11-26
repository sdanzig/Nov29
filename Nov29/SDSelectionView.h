//
//  SDSelectionView.h
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDFaceView;

@interface SDSelectionView : UIView

- (void) place: (SDFaceView *) faceView atPos: (NSUInteger) pos;

@end
