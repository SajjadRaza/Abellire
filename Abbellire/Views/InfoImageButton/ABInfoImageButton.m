//
//  ABInfoImageButton.m
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABInfoImageButton.h"
#import "UIView+NibLoading.h"

@interface ABInfoImageButton()

@property (weak, nonatomic) IBOutlet UIImageView *infoImageView;
@property (weak, nonatomic) IBOutlet UILabel *mainTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIView *overlayView;

- (IBAction)infoButtonPressed:(id)sender;

@end

@implementation ABInfoImageButton

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
        ABInfoImageButton* theRealThing = [[self class] loadFromNib];

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



// Functions to set text for main, sub and description
- (void)setMainTitleText:(NSString *)mText subTitleText:(NSString *)sText andDescriptionText:(NSString *)dText
{
    [self setMainTitleText:mText];
    [self setSubTitleText:sText];
    [self setDescriptionText:dText];
}

- (void)setMainTitleText:(NSString *)text
{
    [self.mainTitleLabel setText:text];
}

- (void)setSubTitleText:(NSString *)text
{
    [self.subTitleLabel setText:text];
}

- (void)setDescriptionText:(NSString *)text
{
    [self.descriptionLabel setText:text];
}

- (void)setInfoImage:(UIImage *)image
{
    [self.infoImageView setImage:image];
}

- (void)setOverlayColor:(int)color
{
    if (color == InfoImageOverlayColorLight)
    {
        [self.overlayView setBackgroundColor:[UIColor whiteColor]];
        [self.subTitleLabel setTextColor:[UIColor blackColor]];
        [self.descriptionLabel setTextColor:[UIColor blackColor]];
    }
    else
    {
        [self.overlayView setBackgroundColor:[UIColor blackColor]];
        [self.subTitleLabel setTextColor:[UIColor whiteColor]];
        [self.descriptionLabel setTextColor:[UIColor whiteColor]];
    }

}

- (IBAction)infoButtonPressed:(id)sender
{
    [self.delegate infoImageSelectedWithTag:self.tag];
}

@end
