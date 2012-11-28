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
@class SDMainView;

@interface SDAppDelegate : UIResponder <UIApplicationDelegate>

- (void) touchUpInside: (id) sender;

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) SDMainView *mainView;

@end
