//
//  ABTopBarView.m
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABTopBarView.h"
#import "UIView+NibLoading.h"

@interface ABTopBarView ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

- (IBAction)backButtonPressed:(id)sender;

@end

@implementation ABTopBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id) awakeAfterUsingCoder:(NSCoder*)aDecoder {
    
    BOOL theThingThatGotLoadedWasJustAPlaceholder = ([[self subviews] count] == 0);
    if (theThingThatGotLoadedWasJustAPlaceholder) {
        ABTopBarView* theRealThing = [[self class] loadFromNib];
		
        // pass properties through
        theRealThing.frame = self.frame;
        theRealThing.autoresizingMask = self.autoresizingMask;
        theRealThing.alpha = self.alpha;
        theRealThing.hidden = self.hidden;
		
		// convince ARC that we're legit
		CFRelease((__bridge const void*)self);
		CFRetain((__bridge const void*)theRealThing);
		
        return theRealThing;
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

- (void)hideBackButton:(BOOL)hide
{
    [self.backButton setHidden:hide];
}

- (IBAction)backButtonPressed:(id)sender
{
    [self.delegate topbarViewBackButtonPressed];
}

- (void)updateTitleText:(NSString *)text
{
    [self.titleLabel setText:text];
    [self.titleLabel setHidden:NO];
    [self.titleView setHidden:YES];
}

- (void)updateTitleView:(UIView *)view
{
    // Removing old view if any
    for (UIView *oldView in [self.titleView subviews])
    {
        [oldView removeFromSuperview];
    }
    
    // Adding new subView
    [self.titleView addSubview:view];
    [self.titleLabel setHidden:YES];
    [self.titleView setHidden:NO];
}


@end
