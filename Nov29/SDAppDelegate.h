//
//  SDAppDelegate.h
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDDrawingView;
@class SDSelectionView;

@interface SDAppDelegate : UIResponder <UIApplicationDelegate> {
    SDDrawingView *drawView;
    SDSelectionView *selectionView;
}

@property (strong, nonatomic) UIWindow *window;

@end
