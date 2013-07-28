//
//  ABTopBarView.h
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ABTopBarViewDelegate <NSObject>

@required

- (void)topbarViewBackButtonPressed;

@end

@interface ABTopBarView : UIView

@property (nonatomic, assign) id <ABTopBarViewDelegate> delegate;

- (void)hideBackButton:(BOOL)hide;
- (void)updateTitleText:(NSString *)text;
- (void)updateTitleView:(UIView *)view;

@end
