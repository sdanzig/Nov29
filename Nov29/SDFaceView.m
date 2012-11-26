//
//  SDFaceView.m
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDFaceView.h"
#import "SDSelectionView.h"

@implementation SDFaceView

- (id) initWithView: (SDSelectionView *) v andName: (NSString *) n atPos: (NSUInteger) p {
	NSString *filename = [NSString stringWithFormat: @"%@.png", n];
	UIImage *image = [UIImage imageNamed: filename];
	if (image == nil) {
		NSLog(@"could not find file %@.png", n);
		return nil;
	}
    
	self = [super initWithImage: image];
	if (self) {
		// Initialization code
		self.userInteractionEnabled = YES;	//UIImageView defaults to NO.
		view = v;
        name = n;
        pos = p;
	}
	return self;
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
