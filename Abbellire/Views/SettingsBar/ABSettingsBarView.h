//
//  ABSettingsBarView.h
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ABSettingsBarViewDelegate <NSObject>

@required

- (void)settingBarFavoritesButtonPressed;
- (void)settingBarSettingsButtonPressed;
- (void)settingBarLocationButtonPressed;

@end

@interface ABSettingsBarView : UIView

@property (nonatomic, assign) id <ABSettingsBarViewDelegate> delegate;

@end
