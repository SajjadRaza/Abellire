//
//  ABSettingsBarView.m
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABSettingsBarView.h"

@interface ABSettingsBarView ()

- (IBAction)favoritesButtonPressed:(id)sender;
- (IBAction)settingsButtonPressed:(id)sender;
- (IBAction)locationButtonpressed:(id)sender;


@end

@implementation ABSettingsBarView

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

- (IBAction)favoritesButtonPressed:(id)sender
{
    [self.delegate settingBarFavoritesButtonPressed];
}

- (IBAction)settingsButtonPressed:(id)sender
{
    [self.delegate settingBarSettingsButtonPressed];
}

- (IBAction)locationButtonpressed:(id)sender
{
    [self.delegate settingBarLocationButtonPressed];
}

@end
