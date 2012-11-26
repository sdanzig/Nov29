//
//  SDDrawingView.m
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDDrawingView.h"

@implementation SDDrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
		path = CGPathCreateMutable();	//born empty
    }
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	CGPoint p = [[touches anyObject] locationInView: self];
	CGPathMoveToPoint(path, NULL, p.x, p.y);
}


- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event {
	CGPoint p = [[touches anyObject] locationInView: self];
	CGPathAddLineToPoint(path, NULL, p.x, p.y);
	[self setNeedsDisplay];	//Trigger a call to drawRect:.
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	CGContextRef c = UIGraphicsGetCurrentContext();
	CGContextBeginPath(c);
	CGContextAddPath(c, path);
	CGContextSetRGBStrokeColor(c, 0, 0, 0, 1);	//black
	CGContextStrokePath(c);
}

@end
