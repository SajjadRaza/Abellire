//
//  ABPromotionViewController.h
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABBaseViewController.h"
#import "ABInfoViewCell.h"
#import "ABSettingsBarView.h"
#import "ABCartBarView.h"

@interface ABPromotionViewController : ABBaseViewController <ABInfoViewCellDelegate, ABSettingsBarViewDelegate, ABCartBarViewDelegate>

- (void)updateTopNaivationView;
- (void)addSettingBarView;
- (void)addCartBarView;

@end
