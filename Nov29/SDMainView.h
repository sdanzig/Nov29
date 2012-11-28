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
    SDSelectionView *selectionView;
    SDFaceView *faceToAdd;
    NSMutableArray *droppedFaces;
}

@property (nonatomic, retain) SDDrawingView *drawView;

- (void) clickedOnFaceWithName: (NSString *)n andTouch:(UITouch *) t;
- (void) clearFaces;

@end
