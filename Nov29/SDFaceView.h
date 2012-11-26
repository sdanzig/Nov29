//
//  SDFaceView.h
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SDSelectionView;

@interface SDFaceView : UIImageView {
    SDSelectionView *view;
    NSString *name;
    NSUInteger pos;
}

- (id) initWithView: (SDSelectionView *) v andName: (NSString *) n atPos: (NSUInteger) p;

@end
