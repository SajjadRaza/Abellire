//
//  ABCartBarView.m
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABCartBarView.h"

@interface ABCartBarView ()

- (IBAction)cartButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *countDisplayView;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;


@end

@implementation ABCartBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
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

- (IBAction)cartButtonPressed:(id)sender
{
    [self.delegate cartViewButtonPressed];
}

- (void)setCartItemCount:(int)count
{
    if (count == 0)
    {
        [self.countDisplayView setHidden:YES];
    }
    else
    {
        [self.countLabel setText:[NSString stringWithFormat:@"%d", count]];
        [self.countDisplayView setHidden:NO];
    }
}


@end
