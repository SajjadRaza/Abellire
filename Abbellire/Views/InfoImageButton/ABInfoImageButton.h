//
//  ABInfoImageButton.h
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import <UIKit/UIKit.h>

enum InfoImageOverlayColor {
    InfoImageOverlayColorDark,
    InfoImageOverlayColorLight
};

@protocol ABInfoImageButtonDelegate <NSObject>

@required

- (void)infoImageSelectedWithTag:(int)tag;

@end


@interface ABInfoImageButton : UIView

@property (nonatomic, assign) id <ABInfoImageButtonDelegate> delegate;

- (void)setMainTitleText:(NSString *)mText subTitleText:(NSString *)sText andDescriptionText:(NSString *)dText;
- (void)setMainTitleText:(NSString *)text;
- (void)setSubTitleText:(NSString *)text;
- (void)setDescriptionText:(NSString *)text;
- (void)setInfoImage:(UIImage *)image;

- (void)setOverlayColor:(int)color;

@end
