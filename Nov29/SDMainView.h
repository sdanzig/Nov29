//
//  SDMainView.h
//  Nov29
//
//  Created by Scott Danzig on 11/26/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDDrawingView;
@class SDSelectionView;
@class SDFaceView;

@interface SDMainView : UIView {
    SDDrawingView *drawView;
    SDSelectionView *selectionView;
    SDFaceView *faceToAdd;
}

- (void) clickedOnFaceWithName: (NSString *)n andTouch:(UITouch *) t;

@end
