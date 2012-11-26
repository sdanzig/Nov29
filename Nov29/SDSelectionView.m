//
//  SDSelectionView.m
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDSelectionView.h"
#import "SDFaceView.h"

#define NUM_OF_FACES 4

@implementation SDSelectionView

- (id)initWithFrame:(CGRect)frame andParentView: (SDMainView *)v
{
    self = [super initWithFrame:frame];
    if (self) {
        self.mainView = v;
        self.backgroundColor = [UIColor grayColor];
        self.faceViews = [[NSMutableArray alloc] initWithCapacity:4];
        [self placeFaceViewWithName:@"beth" atPos:0];
        [self placeFaceViewWithName:@"lisa" atPos:1];
        [self placeFaceViewWithName:@"marisa" atPos:2];
        [self placeFaceViewWithName:@"peter" atPos:3];
        self.userInteractionEnabled = NO;
    }
    return self;
}

- (void) placeFaceViewWithName: (NSString *) n atPos: (NSUInteger) pos
{
    SDFaceView *faceView = [[SDFaceView alloc] initWithView:self andName:n atPos:pos];
    
    CGSize selViewSize = self.bounds.size;
    
    CGFloat hPerPos = selViewSize.height / NUM_OF_FACES;
	faceView.center = CGPointMake( selViewSize.width / 2.0,
                                  hPerPos * (pos + 0.5) );
    [self addSubview:faceView];
    [self.faceViews addObject:faceView];
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
