//
//  ABDoubleInfoViewCell.m
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABDoubleInfoViewCell.h"

@interface ABDoubleInfoViewCell ()

@property (weak, nonatomic) IBOutlet ABInfoImageButton *infoButtonLeft;
@property (weak, nonatomic) IBOutlet ABInfoImageButton *infoButtonRight;

@end


@implementation ABDoubleInfoViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateCell
{
    [self.infoButtonLeft setDelegate:self];
    [self.infoButtonLeft setInfoImage:[UIImage imageNamed:@"val_2"]];
    [self.infoButtonLeft setMainTitleText:@"50\%"];
    [self.infoButtonLeft setSubTitleText:@"DISCOUNT ON SS13"];
    [self.infoButtonLeft setDescriptionText:@"Dolce & Gabanna"];
    [self.infoButtonLeft setOverlayColor:InfoImageOverlayColorDark];
    
    [self.infoButtonRight setDelegate:self];
    [self.infoButtonRight setInfoImage:[UIImage imageNamed:@"val_3"]];
    [self.infoButtonRight setMainTitleText:@""];
    [self.infoButtonRight setSubTitleText:@"NEW ARRIVAL"];
    [self.infoButtonRight setDescriptionText:@"by Dolce Vita"];
    [self.infoButtonRight setOverlayColor:InfoImageOverlayColorDark];
}

@end
