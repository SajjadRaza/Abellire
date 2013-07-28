//
//  ABCartBarView.h
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ABCartBarViewDelegate <NSObject>

@required
- (void)cartViewButtonPressed;

@end

@interface ABCartBarView : UIView

@property (nonatomic, assign) id <ABCartBarViewDelegate> delegate;

- (void)setCartItemCount:(int)count;

@end
