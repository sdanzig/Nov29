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
    NSUInteger pos;
}

@property (nonatomic, retain) NSString *name;

- (id) initWithName: (NSString *) n;
- (id) initWithView: (SDSelectionView *) v andName: (NSString *) n atPos: (NSUInteger) p;

@end
