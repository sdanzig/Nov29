//
//  SDSelectionView.h
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDFaceView;
@class SDMainView;

@interface SDSelectionView : UIView {
    UIButton *button;
    CGFloat hPerPos;
    CGSize selViewSize;
}

@property (nonatomic, retain) SDMainView *mainView;
@property (nonatomic, retain) NSMutableArray *faceViews;

- (id)initWithFrame:(CGRect)frame andParentView: (SDMainView *)v;

- (void) placeFaceViewWithName: (NSString *) name atPos: (NSUInteger) pos;

@end
