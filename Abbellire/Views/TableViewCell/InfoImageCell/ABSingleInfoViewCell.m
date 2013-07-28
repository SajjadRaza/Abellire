//
//  ABSingleInfoViewCell.m
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABSingleInfoViewCell.h"

@interface ABSingleInfoViewCell ()

@property (weak, nonatomic) IBOutlet ABInfoImageButton *infoButton;

@end

@implementation ABSingleInfoViewCell

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
    [self.infoButton setDelegate:self];
    [self.infoButton setInfoImage:[UIImage imageNamed:@"val_3"]];
    [self.infoButton setMainTitleText:@"2013"];
    [self.infoButton setSubTitleText:@"SPRING / SUMMER COLLECTION"];
    [self.infoButton setDescriptionText:@"New arrivals from top most European designers"];
    [self.infoButton setOverlayColor:InfoImageOverlayColorLight];
}

@end
