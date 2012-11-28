//
//  SDSelectionView.m
//  Nov29
//
//  Created by Scott Danzig on 11/25/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDSelectionView.h"
#import "SDFaceView.h"
#import "SDMainView.h"
#import "SDDrawingView.h"

#define NUM_OF_FACES 4

@implementation SDSelectionView

- (id)initWithFrame:(CGRect)frame andParentView: (SDMainView *)v
{
    self = [super initWithFrame:frame];
    if (self) {
        self.mainView = v;
        self.backgroundColor = [UIColor grayColor];
        self.faceViews = [[NSMutableArray alloc] initWithCapacity:4];
        selViewSize = self.bounds.size;
        hPerPos = selViewSize.height / (NUM_OF_FACES+1);

        button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(selViewSize.width * 0.8, hPerPos * 0.5);	//size of button
        button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 2,
                                  (hPerPos * NUM_OF_FACES) + b.origin.y + (hPerPos - s.height) / 2,
                                  s.width,
                                  s.height
                                  );
        NSLog(@"frame=%@", NSStringFromCGRect(button.frame));
        
		[button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[button setTitle: @"Clear" forState: UIControlStateNormal];
        [button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
		[self addSubview: button];
        [self placeFaceViewWithName:@"beth" atPos:0];
        [self placeFaceViewWithName:@"lisa" atPos:1];
        [self placeFaceViewWithName:@"marisa" atPos:2];
        [self placeFaceViewWithName:@"peter" atPos:3];
    }
    return self;
}

- (void) placeFaceViewWithName: (NSString *) n atPos: (NSUInteger) pos
{
    SDFaceView *faceView = [[SDFaceView alloc] initWithView:self andName:n atPos:pos];
    
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
