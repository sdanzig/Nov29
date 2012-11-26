//
//  SDMainView.m
//  Nov29
//
//  Created by Scott Danzig on 11/26/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDMainView.h"
#import "SDSelectionView.h"
#import "SDDrawingView.h"
#import "SDFaceView.h"

@implementation SDMainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIScreen *screen = [UIScreen mainScreen];
        CGRect drawFrame = screen.bounds;
        drawFrame.size.width = drawFrame.size.width * 0.8;
        NSLog(@"drawFrame width = %f",drawFrame.size.width);
        CGRect selectionFrame = screen.bounds;
        selectionFrame.size.width = selectionFrame.size.width * 0.2;
        NSLog(@"selectionFrame width = %f",selectionFrame.size.width);
        selectionFrame.origin.x = drawFrame.size.width;
        drawView = [[SDDrawingView alloc] initWithFrame:drawFrame];
        selectionView = [[SDSelectionView alloc] initWithFrame:selectionFrame andParentView:self];
        [self addSubview:drawView];
        [self addSubview:selectionView];
    }
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    UITouch *t = [touches anyObject];
    if (touches.count > 0) {
        NSEnumerator *e = [selectionView.faceViews objectEnumerator];
        SDFaceView *fv;
        while (fv = [e nextObject]) {
            CGPoint p = [t locationInView:self];
            if(CGRectContainsPoint(fv.frame, p)) {
                faceToAdd = [[SDFaceView alloc] initWithName: fv.name];
                faceToAdd.center = p;	//Move the littleView to a new location.
                [self addSubview:faceToAdd];
            }
        }
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    if(faceToAdd != nil) {
        UITouch *touch = [touches anyObject];
        CGPoint newPoint = [touch locationInView:self];
        faceToAdd.center = newPoint;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
